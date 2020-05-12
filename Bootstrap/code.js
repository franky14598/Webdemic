function buscar(){

  var busqueda =document.getElementById("search").value;

  var cadenMin=busqueda.toLowerCase();

  var filas=document.getElementsByTagName("table");

  var haches=document.getElementsByTagName("h2");

  var paragraph=document.getElementsByTagName("p");

      // ** bucle **

  for (var i=0;i<filas.length;i++){

    var texto = haches[i].textContent.toLowerCase();

    var n =texto.includes(cadenMin);

     if ( n ){
       haches[i].setAttribute("class","show");
       filas[i].setAttribute("class","show");
       paragraph[i+1].setAttribute("class","show");


     }else{filas[i].setAttribute("class","hidde");

      haches[i].setAttribute("class","hidde");

     paragraph[i+1].setAttribute("class","hidde");
   }
    }

}
