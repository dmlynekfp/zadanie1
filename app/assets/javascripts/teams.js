$(document).ready(function(){


    function validate()
    {
        judge.validate(document.getElementById('team_name'), {
            valid: function(element) {
                element.style.border = '1px solid green';
            },
            invalid: function(element, messages) {
                element.style.border = '1px solid red';
                //alert(messages.join(','));
            }
        });
    }

    validate();

    $("#team_name").keyup(validate);




});

