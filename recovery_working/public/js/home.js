var pg = require('pg');

var connectionString = "postgres://recoveryMaster:MinedMinds@recoverycenterlocator.cnho1h3hnv8t.us-east-2.rds.amazonaws.com/ip:5432/recoverycenterlocator";

var pgClient = new pg.Client(connectionString);

pgClient.connect();

// var query 


insurance_company.addEventListener("change", function (){
	var idOfInsurance = $("#insurance_company").val()
	var query = pgClient.query("SELECT center_name, center_phone, center_location, center_comments FROM public.recovery_center,  public.relation_table WHERE public.relation_table.insurance_id = '+idOfInsurance+' AND public.relation_table.centers_id = public.recovery_center.id");
	document.getElementById("showHere").appendChild(query);
})
