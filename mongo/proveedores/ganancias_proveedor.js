
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "obtener_pagos_proveedor",
    value: function (proveedor_id) {
        if (db.historial_transacciones.find({ "id_proveedor": ObjectId(proveedor_id) }).toArray().length <= 0) {
            return "No hay transacciones"
        }
        let empresa = db.historial_transacciones.find({ "id_proveedor": ObjectId(proveedor_id) })
        let contador = 0
        empresa.forEach(e => {
            contador += e.precio
        })
        return `El provedor ha vendido: ${contador}`
    }
});

db.loadServerScripts();

obtener_pagos_proveedor();