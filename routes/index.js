var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  var deviceAgent = req.headers["user-agent"].toLowerCase();
  var agentID = deviceAgent.match(/(iphone|ipod|android)/);
  if(agentID){
    res.render('mobile', { title: '珠珠工艺' });
  }else{
    res.render('index', { title: '珠珠工艺' });
  }
});
router.get('/mobile', function(req, res, next) {
  res.render('mobile', { title: '宝生珠行' });
});

module.exports = router;
