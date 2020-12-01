
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "obtener_pagos",
    value: function (identificacion) {
        if (db.historial_transacciones.find({}).toArray().length <= 0) {
            return "No hay transacciones"
        }
        let empresa= db.historial_transacciones.find({})
        let contador=0
        empresa.forEach(e=>{
            contador+=e.precio
        })
        return `La empresa ha vendido: ${contador}`
    }
});

db.loadServerScripts();

obtener_pagos();