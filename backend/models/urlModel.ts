// models/urlModel.ts
import { Document, model, Schema } from 'mongoose';

interface UrlDocument extends Document {
  long_url: string;
  short_url: string;
  created_at: Date;
  expires_at: Date;
  click_count: number;
  user: string;
}

const urlSchema: Schema<UrlDocument> = new Schema({
  long_url: { type: String, required: true },
  short_url: { type: String, required: true },
  created_at: { type: Date, default: Date.now },
  expires_at: {
    type: Date,
    default: () => {
      const expirationDate = new Date();
      expirationDate.setDate(expirationDate.getDate() + 10); // Expires after 10 days
      return expirationDate;
    },
  },
  click_count: { type: Number, default: 0 },
  user: { type: String },
});

const UrlModel = model<UrlDocument>('Url', urlSchema);

export { UrlModel, UrlDocument };
