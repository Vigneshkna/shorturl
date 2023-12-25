// server.ts
import express, { Application } from 'express';
import shortid from 'shortid';
import mongoose from 'mongoose';
import schema from './api/v1/schema';
import { UrlModel } from './models/urlModel';
import {utils} from './util/util';

const app: Application = express();

// Connect to MongoDB
mongoose.connect(process.env.MONGODB_URL as string)
  .then(() => {
    console.log(`Db Connected`);
  })
  .catch((err: { message: any; }) => {
    console.log(err.message);
  });


// app.use('/api/v1', graphqlHTTP({ schema, graphiql: true }));


// get all saved URLs
app.get("/all", async (req, res, next) => {
    UrlModel.find((error: any, data: any) => {
      if (error) {
        return next(error);
      } else {
        res.json(data);
      }
    });
  });
  
  // URL shortener endpoint
  app.post("/short", async (req, res) => {
    console.log("HERE", req.body.url);
    const { origUrl } = req.body;
    const base = process.env.DOMAIN_URL;
  
    const urlId = shortid.generate();
    if (utils(origUrl)) {
      try {
        let url = await UrlModel.findOne({ origUrl });
        if (url) {
          res.json(url);
        } else {
          const shortUrl = `${base}/${urlId}`;
  
          url = new UrlModel({
            origUrl,
            shortUrl,
            urlId,
            date: new Date(),
          });
  
          await url.save();
          res.json(url);
        }
      } catch (err) {
        console.log(err);
        res.status(500).json("Server Error");
      }
    } else {
      res.status(400).json("Invalid Original Url");
    }
  });
  
  // redirect endpoint
  app.get("/:urlId", async (req, res) => {
    try {
      const url = await UrlModel.findOne({ urlId: req.params.urlId });
      console.log(url);
      if (url) {
        url.click_count++;
        url.save();
        return res.redirect(url.long_url);
      } else res.status(404).json("Not found");
    } catch (err) {
      console.log(err);
      res.status(500).json("Server Error");
    }
  });

// Port Listenning on 3000
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running at PORT ${PORT}`);
});