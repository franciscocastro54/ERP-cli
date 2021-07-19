<html>
    <head>
         <script>
       

 const cargar_selects=async()=>{
let peticion= await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/Comunas/200')

        const data= await peticion.json();
      data.items.map(comuna=>{
        let option= document.createElement('option')
           option.value=comuna.nombre;
           option.innerHTML=comuna.nombre;
           
            let select=document.getElementById('inputComuna');
        select.appendChild(option)
        })
        
     const peticion2= await fetch('https://szgtnnarpl3vuo5-bddsistemas.adb.us-ashburn-1.oraclecloudapps.com/ords/icamilofuentes/rubro')

const   data2= await peticion2.json();
      data2.items.map(comuna=>{
        let option= document.createElement('option')
           option.value=comuna.nombre;
           option.innerHTML=comuna.nombre;
           
            let select=document.getElementById('inputRubro');
        select.appendChild(option)
        })
        
 }
 cargar_selects()

        </script>
    </head>
    <body>
         
<form class="container-fluid">
    <div class="row justify-content-center py-2">
        <h2 class="col-6 text-center">Modificar Empresa</h2>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Rut:</label>
        </div>
        <div class="col-5">
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="123456-7"/>
        </div>
        <input type="button" class="col-1 btn btn-primary" value="Buscar">
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Nombre:</label>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="CO.example"/>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Nombre Representante:</label>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre Apellido"/>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Rut representante:</label>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="123456-7"/>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Rubro:</label>
        </div>
        <div class="col-6">
            <select class="form-select" id='inputRubro' aria-label="Default select example">
                <option selected>Rubro</option>
              
            </select>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Correo Electronico:</label>
        </div>
        <div class="col-6">
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="example@example.com"/>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Confirmar Correo:</label>
        </div>
        <div class="col-6">
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="example@example.com"/>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Teléfono:</label>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="+56912345678"/>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Comuna:</label>
        </div>
        <div class="col-6">
            <select class="form-select" id='inputComuna' aria-label="Default select example">
                <option selected>Comunas</option>
      
            </select>
        </div>
    </div>
    <div class="row justify-content-center  align-items-center py-1">   
        <div class="col-2 ">
            <label class="">Dirección:</label>
        </div>
        <div class="col-6">
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Example 1234"/>
        </div>
        <div class="row justify-content-center  align-items-center py-1">
            <input type="submit" class="col-4 btn btn-primary" value="Guardar">
        </div>
    </div>
</form>
    </body>
</html>