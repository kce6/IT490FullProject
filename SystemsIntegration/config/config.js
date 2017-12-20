const jwtStrategy = require('passport-jwt').Strategy;
const extractJwt = require('passport-jwt').ExtractJwt;
module.exports = function(passport)
{
    let opt = {};
    opt.jwtFromRequest = ExtractJwt.fromAuthHeader();
    opt.secretOrKey = 'SystemIntegration';
    passport.use(new jwtStrategy(opts,(jwt_payload,done)=>
    {

    }))
}