$(document).on('ready page:load',function(){



    function validate(element)
    {
        if (element.get(0).type=='email')
        {
            element=element.get(0);
            if(/^[0-9A-Za-z'\.\-_]+@[0-9A-Za-z'\.\-_]+\.[0-9A-Za-z'\.\-_]+$/.test(element.value))
            {
                element.style.border = '1px solid green';
            }
            else
            {
                element.style.border = '1px solid red';
            }
            return;
        }
        judge.validate(element.get(0), {
            valid: function(element) {
                element.style.border = '1px solid green';


            },
            invalid: function(element, messages) {
                element.style.border = '1px solid red';
            }
        });
    }

    $(".formtastic input").keyup(  function() {  validate($(this));  }  );

    $(document).on('cocoon:after-insert', function(e, insertedItem) {
        $(".formtastic input").unbind("keyup");
        $(".formtastic input").keyup( function() {  validate($(this));  });
    });

});



