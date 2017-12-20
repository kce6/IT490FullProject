const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const http = require('http');
const passport = require("passport");
const cors = require("cors");
const app = express();
const users = require('./routes/Users');

// Parsers
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false}));

//Passport
app.use(passport.initialize());
app.use(passport.session());

app.use(cors());
// Angular DIST output folder
app.use(express.static(path.join(__dirname, 'dist')));

app.use('/users',users);
// Send all other requests to the Angular app
app.get('/',(req,res)=>
{
    res.sendFile(path.join(__dirname, 'dist/index.html'));    
});
//Set Port
const port = process.env.PORT || '3112';
app.set('port', port);

const server = http.createServer(app);

server.listen(port, () => console.log(`Running on localhost:${port}`));