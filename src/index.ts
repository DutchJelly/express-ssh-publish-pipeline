import express from "express";
import "dotenv/config";

export const app = express();

const PORT = process.env.PORT;

app.get("/", (req, res) => {
  res.send("Hello world");
});

app.listen(PORT, () => {
  console.info(`Express is listening on port ${PORT}`);
});
