var express = require('express');
var router = express.Router();
var db = require('../code/db').getClient();
/* GET home page. */
router.get('/', function (req, res, next) {
  db.any('SELECT * from insurance order by name').then(insurances => {
    res.render('index', { title: 'Expeditor', insurances: insurances, selected_company: '' });
  })
    .catch(error => {
      next(error);

      // error;
    });
});
router.post('/', function (req, res, next) {
  var selected_company = 0;
  if (req.body.insurance_company && !isNaN(req.body.insurance_company)) {
    selected_company = parseInt(req.body.insurance_company);
  }
  db.task(t => {
    var q1 = db.any('SELECT * from insurance order by name');
    var q2 = db.any(['SELECT center_name, center_phone, center_location, center_comments',
      'FROM public.recovery_center,  public.relation_table',
      'WHERE public.relation_table.insurance_id = $1 AND public.relation_table.centers_id = public.recovery_center.id'].join(' '),
      selected_company);
    return t.batch([q1, q2]);
  }).then(qs => {
    var insurances = qs[0];
    var recovery_centers = qs[1];

    res.render('index', { title: 'Expeditor', insurances: insurances, recovery_centers: recovery_centers, selected_company: selected_company });
  })
    .catch(error => {
      next(error);

      // error;
    });
});

module.exports = router;
