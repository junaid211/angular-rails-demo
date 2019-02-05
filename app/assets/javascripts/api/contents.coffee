$ ->
	$("body").on "click", "#req-data", (event) ->
	  url = '/api/contents'
		$.ajax url,
	    type: 'GET'
	    timeout: 5000
	    success: (response) ->
	      #parsedResponse = $.parseJSON response
	      alert response
	      #removeAddBtn (parsedResponse.ticker)
	    error: (response) ->
	      console.log "AJAX Error: #{response}"
	
  