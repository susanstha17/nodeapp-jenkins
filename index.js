const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Welcome to Jenkins Training Session!");
});

app.listen(8080, () => {
  console.log("Listening on port 8080");
});
