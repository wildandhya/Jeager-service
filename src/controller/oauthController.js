/** @format */

const oauthModel = require("../model/Oauth");
const formResponse = require("../helper/formResponse");

const oauthController = {
  setClient: (req, res) => {
    oauthModel
      .setClient(req.body)
      .then((data) => {
        const client = {
          ...req.body,
        };
        formResponse.success(res, client);
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
  getClient: (req, res) => {
    oauthModel
      .getClient(req.query)
      .then((data) => {
        formResponse.success(res, data);
      })
      .catch((err) => {
        formResponse.error(res, err);
      });
  },
};

module.exports = oauthController;
