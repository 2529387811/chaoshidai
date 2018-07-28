var z = 0;
var tupian=new Array("img/guoji/89534_1920_350_002-web.jpg");
setTimeout("a()",0);
function a(){
    document.getElementById("srid").src=tupian[z];
    z++;
    if(z>tupian.length-1){
        z=0;
    }
    setTimeout("a()",2000);
}
