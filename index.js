/** @format */

const express = require("express");
require("dotenv").config();
const bodyPaser = require("body-parser");
const logger = require("morgan");

const router = require("./src/router/index");

const App = express();

App.use(bodyPaser.json());
App.use(bodyPaser.urlencoded({ extended: false }));
App.use(logger("dev"));

// router
App.use(router);

// setup server
const PORT = process.env.PORT || 4000;
App.listen(PORT, () => {
  console.log(`SERVER LISTENING AT ${PORT}`);
});
