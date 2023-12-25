// graphql/schema.ts
import {
  GraphQLSchema,
  GraphQLObjectType,
  GraphQLString,
  GraphQLNonNull,
  GraphQLBoolean,
} from "graphql";
import { UrlModel } from '../../models/urlModel';
import shortid from "shortid";

const RootQuery = new GraphQLObjectType({
  name: "RootQueryType",
  fields: {
    checkSchema: {
      type: GraphQLString,
      resolve: () => "Your schema is present!",
    },
  },
});

const Mutation = new GraphQLObjectType({
  name: "Mutation",
  fields: {
    createShortUrl: {
      type: GraphQLString,
      args: {
        originalUrl: { type: new GraphQLNonNull(GraphQLString) },
        customShortId: { type: GraphQLString },
      },
      async resolve(_, { originalUrl, customShortId }) {
        if (customShortId) {
          // Check if the custom short ID is already in use
          const existingUrl = await UrlModel.findOne({
            short_url: customShortId,
          });
          if (existingUrl) {
            throw new Error("Custom short URL already in use.");
          }

          // Create a new URL document with the custom short ID
          const newUrl = new UrlModel({
            long_url: originalUrl,
            short_url: customShortId,
          });
          await newUrl.save();
          return customShortId;
        } else {
          // Generate a unique short ID
          let shortId, existingUrl;
          do {
            shortId = generateShortId(); // Implement your short URL generation logic
            existingUrl = await UrlModel.findOne({ short_url: shortId });
          } while (existingUrl);

          // Create a new URL document with the generated short ID
          const newUrl = new UrlModel({
            originalUrl,
            shortUrl: shortId,
          });
          await newUrl.save();
          return shortId;
        }
      },
    },
  },
});

// Implement your short URL generation logic
function generateShortId(): string {
    const urlId = shortid.generate();
    return urlId;
}

export default new GraphQLSchema({
  query: RootQuery,
  mutation: Mutation,
});
