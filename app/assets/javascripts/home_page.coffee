# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


		const HOST = 'http://www.bungie.net/Platform/Destiny/';



		var baseRequest = request.defaults({headers: {'X-API-Key':credentials.destinyKey}});

		app.get('/test',function(req,res) {
		  if (!err && response.statusCode < 400) {
		    baseRequest(HOST + '2/Stats/GetMembershipIdByDisplayName/' + credentials.defaultUserName + '/',
			  function (err, response, body) {

			    var context = {};
				context.test = JSON.stringify(JSON.parse(body), null, 4);
				res.render('test', context);
		    });
		  }
		});

				if (JSON.parse(body).ErrorCode > 1) {
		  #error handling code goes here
		}