<%@ page import="zipcitystatedemo.ZipCode" contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div id="content" role="main" style="padding:10em;">
        
        <zipcitystate:resources/>

        <g:javascript>
            jQuery(document).ready(function () {
                $("#zipField").ziplookup()
                        .on('zipChange', function (event, state, city, zip) {
                    $("#zipError").html('').hide();
                    //populate the city and state
                    $("#cityField").val(city);
                    $("#stateField").val(state);
                    //automatically move the cursor to the field that comes next
                    $("#phoneField").focus();
                })
                        .on('zipNotFound', function (event, zip) {
                    //maybe display something or just do nothing
                    $("#zipError").show().html("<text style='color:red'>Zip not found!</text>");
                });
            });
        </g:javascript>
        <h1>Zip-City-State Sample</h1>

        <p>Below is an example of the basic functionality provided by this plugin</p>

        <h3>Some zips you can try:</h3>
        <g:select name="availableZips" from="${ZipCode.list()}" optionValue="${{ it.code + '-' + it.city + '-' + it.state }}"/>
        <h3>Try it out!</h3>
        <p>Enter some of the five digit zips that are present in the the select above.
        (Or enter something else and look at the error div)</p>
        <div>
            <label for="zipField">Zip</label>
            <g:textField name="zipField"/>
            <div id="zipError"></div>
        </div>
        <div style="margin-top: 1em;">
            <label for="cityField">City</label>
            <g:textField name="cityField"/>
            <label for="stateField">State</label>
            <g:textField name="stateField"/>
            <label for="phoneField">Phone Number</label>
            <g:textField name="phoneField"/>
        </div>
</div>

</body>
</html>
