
function buscar(){

  var searches=document.getElementById("search").value;
  var lowcase=searches.toLowerCase();

  var row=document.getElementsByTagName("tr");
  var table=document.getElementsByTagName("table");
  var tdtable=document.getElementsByTagName("td");


  for (var i=0;i<row.length;i++){

    var textstring = tdtable[i].textContent.toLowerCase();
    var n =textstring.includes(lowcase);

     if ( n ){
       row[i+1].setAttribute("class","show");
     }else{row[i+1].setAttribute("class","hidde");}

      row[0].setAttribute("class","show");
    }
}
