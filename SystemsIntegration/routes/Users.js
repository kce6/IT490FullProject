const express = require("express");
const router = express.Router();
var amqp = require('amqp');
var utf8 = require('utf8');
const passport = require('passport');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const fs = require('fs');
const mysql = require('mysql')
var winston = require("winston");
winston.configure({
  level: 'info',
  transports: [
    new winston.transports.File({
      filename: 'Log.log'
    })
  ]
});

var lastMessage = null;
var _exchange = null;
var _queue = null;
var _consumerTag = null;
var response;
var request;
var con = mysql.createConnection({
  host: "128.235.8.21",
  user: "",
  password: "",
  database: "IT490_Database"
});

con.connect(function (err) {
  if (err) throw err;
  console.log("Connected to Database!");
});
/*
var connection = amqp.createConnection({host:'192.168.1.210',login:'Jason',password:'password'});
//Connect to queue
connection.on('error',function(e)
{
    console.log('Error from amqp: ' ,e);
});

connection.on('ready', function()
{
    console.log("Connection Established...");
        connection.queue('FrontEndListener',{durable: false, autoDelete: true},function(queue)
        {
            _queue = queue;
            console.log("Queue " + _queue.name + " Established...");
            queue.bind('DataHandler','FrontEnd');
            queue.subscribe(function(message)
            {            
                var data = message.data;
                if(data != undefined)
                {
                    lastMessage = data.toString();
                    console.log("Recieve from Queue: " + data.toString());
                    var obj = JSON.parse(data.toString());
                    //Authentication
                    if(obj.Request == "Authenticate")
                    {
                        console.log("Authenticating Password..");
                        comparePasswords(request.body.password,obj.password,(err,isMatch)=>
                        {
                            if(isMatch)
                            {
                                console.log("Authentication Success!");
                                if(response != null)
                                {
                                    response.json({success:true,name:obj.name,email:obj.email,zipcode:obj.zipcode});
                                }
                            }
                            else{
                                console.log("Authentication Failed!");
                                if(response != null)
                                    response.json({success:false});
                            }
                        });
                    }else
                    {
                        if(response != null)
                        {
                         response.send(lastMessage);
                         response = null;
                        }
                    }
                }
            }).addCallback(function(res)
            {
                _consumerTag = res.consumerTag;
            });
        });          
});*/
router.post("/logger", (req, res, next) => {
  winston.info(req.body.message);
});
router.post("/authenticate", (req, res, next) => {

  con.query("SELECT * FROM User_Info WHERE Email == '" + req.body.email + "'", function (err, result) {
    if (err) throw err;
    console.log(result);
  });
  /*
  res.json({
    success: true,
    email: "example@gmail.com",
    name: "Jason",
    zipcode: "07047"
  });
  winston.info("User attempted Login with email:" + req.body.email);

  /*
    
        response = res;
        request = req;
        connection.publish(_queue.name,
            {"Request":"Authenticate",
            "email":req.body.email,
            "password":req.body.password},
            {mandatory:true});
            */
});
router.post("/register", (req, res, next) => {
  response = res;
  var saltedpassword = bcrypt.genSalt(10, function (err, salt) {
    bcrypt.hash(req.body.password, salt, (err, hash) => {
      if (err)
        throw err;
      let newUser = {
        "Request": "Register",
        "name": req.body.name,
        "email": req.body.email,
        "password": hash,
        "zipcode": req.body.zipcode
      };
      connection.publish(_queue.name, newUser);
      console.log("Sent for Register");
    });
  });
});
router.post("/GetWeatherDataByName", (req, res, next) => {

  var obj;
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "GetWeatherDataByName",
    "email": req.body.StormName
  }, {
    mandatory: true
  });
  /*
  winston.info("Getting Weather data by name:" + req.body.name);
  fs.readFile("routes/weatherData.json", 'utf8', function (err, data) {
    if (err) throw err;
    var found = false;
    obj = JSON.parse(data);
    obj.Storms.forEach(element => {
      if (element.name == req.body.name) {
        console.log(element);
        res.json(element);
        found = true;
        winston.info(" Weather data by name:" + req.body.name + " found!");
      }
    });
    if (!found) {
      console.log("Failed Search");
      res.json({
        success: false
      });
      winston.info(" Weather data by name:" + req.body.name + " not found!");
      
    }
  });
  */
});
router.post("/GetTrackedStorms", (req, res, next) => {
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "GetTrackedStorms",
    "email": req.body.email
  }, {
    mandatory: true
  });
});

router.post("/GetStormInZipcode", (req, res, next) => {
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "GetTrackedStorms",
    "email": req.body.email
  }, {
    mandatory: true
  });
});
router.post("/SaveTrackedStorms", (req, res, next) => {
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "SaveTrackedStorms",
    "email": req.body.email,
    "Storms": req.body.storms
  }, {
    mandatory: true
  });
});
router.post("/GetMultipleWeatherData", (req, res, next) => {
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "GetMultipleWeatherData",
    "StormName": req.body.storms
  }, {
    mandatory: true
  });
});
router.post("/GetTempeture", (req, res, next) => {
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "GetTempeture",
    "zipcode": req.body.zipcode
  }, {
    mandatory: true
  });
});
router.post("/GetNearbyStorms", (req, res, next) => {
  response = res;
  request = req;
  connection.publish(_queue.name, {
    "Request": "GetNearbyStorms",
    "zipcode": req.body.zipcode
  }, {
    mandatory: true
  });
});
comparePasswords = function (candidatePassword, hash, callback) {
  bcrypt.compare(candidatePassword, hash, (err, isMatch) => {
    callback(null, isMatch);
  });
}
comparePasswordsUnsafe = function (candidatePassword, hash, callback) {
  if (candidatePassword == hash) {
    callback(null, true);
  } else {
    callback(null, false)
  }
}
module.exports = router;
