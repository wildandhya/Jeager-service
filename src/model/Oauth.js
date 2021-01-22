/** @format */

const db = require("../config/dbConfig");

const Oauthmodel = {
  getAccessToken: () => {
    return new Promise((resolve, reject) => {});
  },
  getAuthorizationCode: () => {
    return new Promise((resolve, reject) => {});
  },
  getClient: (query) => {
    return new Promise((resolve, reject) => {
      const queryDb = `SELECT clientId, clientSecret FROM clients WHERE clientId = ? AND clientSecret = ? `;
      db.query(queryDb, [query.clientId, query.clientSecret], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  setClient: (body) => {
    return new Promise((resolve, reject) => {
      const queryDb = `INSERT INTO clients SET clientId = ?, clientSecret = ?, redirectUri = ?, grants = ?`;
      db.query(
        queryDb,
        [body.clientId, body.clientSecret, body.redirectUri, body.grants],
        (err, data) => {
          if (!err) {
            resolve(data);
          } else {
            reject(err);
          }
        }
      );
    });
  },
  getUser: () => {
    return new Promise((resolve, reject) => {});
  },
  setUser: () => {
    return new Promise((resolve, reject) => {});
  },
  saveToken: () => {
    return new Promise((resolve, reject) => {});
  },
  revokeToken: () => {
    return new Promise((resolve, reject) => {});
  },
};

module.exports = Oauthmodel;
