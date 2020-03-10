// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

function nuevoArriendo(table_id) {

  let checkboxes = document.getElementsByName(table_id)

  let cont = []


  for (let i=0; i < checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      cont.push(checkboxes[i].value)
    }
  }

  console.log(cont)

  document.getElementById(table_id).value = cont

}