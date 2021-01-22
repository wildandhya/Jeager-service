/** @format */

const router = require("express").Router();
const oauthController = require("../controller/oauthController");

router.post("/auth/set_client", oauthController.setClient);
router.get("/auth/get_client", oauthController.getClient);

module.exports = router;
