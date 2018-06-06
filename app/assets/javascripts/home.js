/*
const apiKey = process.env.OPEN_EXCHANGE_KEY;
const apiUrl = "https://openexchangerates.org/api/latest.json?app_id=" + apiKey;
let currency_data;
$( document ).ready(function() {
    console.log( "ready!" );
    let getData = (function(){
        return $.ajax({
            type: 'GET',
            dataType: 'json',
            url: apiUrl,
            success: function(data) {
                return data
            },
            error: function(e) {
                console.log(e);
            }
        });
    });

    getData().then(function(data){
        console.log(data)
    });

});
*/
