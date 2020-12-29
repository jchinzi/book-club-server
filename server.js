'use strict'

const express = require('express');
const cors = require('cors');
// const superagent = require('superagent');
const pg = require('pg');
require('dotenv').config();

const app = express();

app.use(cors());

const PORT = process.env.PORT || 3001;
const client = new pg.Client(process.env.DATABASE_URL);

client.on('error', error => {
  console.log('ERROR', error);
})

app.get('/memberTable', showMembers);

function showMembers(request, response){
  let sql = 'SELECT * FROM members;';
  client.query(sql)
    .then(resultsFromPG => {
      let members = resultsFromPG.rows;
      response.send(members);
    }).catch(error => console.log('ERROR', error))
}

client.connect()
  .then(() => {
    app.listen(PORT, () => {
      console.log(`Listening on PORT ${PORT}`);
    })
  });