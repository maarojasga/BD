
/// funcion insertar_registro_proveedor
///
/// Args:
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_stock",
    value: function () {
        return db.productos.find({ "cantidad": { "$gt": 0 } })
    }
});

db.loadServerScripts();

encontrar_productos_stock();
