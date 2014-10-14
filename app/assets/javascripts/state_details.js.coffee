# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


<script language="javascript" type="text/javascript">

function validate()

{

var formName=document.State;

var text = document.getElementById('state name');

var tex = document.getElementById('state id');

if(formName.state id.value == "")

{

alert("Enter The State ID");

formName.state id.focus();

return false;

}
if (/[^0-9]/.test(tex.value)) {

  alert('Only Numbers are allowed');

formName.state id.focus();

return false;

}

if(formName.state name.value == "")

{

alert("Enter the State Name");

formName.state name.focus();

return false;

}

if (/[^a-z^A-Z^0-9]/.test(text.value)) {

  alert('No Spaces or special characters are allowed');

formName.state name.focus();

return false;

}


return true;

}

</script>

