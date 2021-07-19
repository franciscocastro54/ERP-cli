/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


const cargar_selects=async(url,select)=>{
let peticion= await fetch(url)

        const data= await peticion.json();
      data.items.map(comuna=>{
        let option= document.createElement('option')
           option.value=comuna.nombre;
           option.innerHTML=comuna.nombre;
           
             let Select=document.getElementById(select);
        Select.appendChild(option)
        })
        
    
     }