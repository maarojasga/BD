
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_sin_stock",
    value: function () {
        if(db.productos.find({}).toArray().length<=0){
            return "No hay productos"
        }
        return db.productos.find({ "cantidad": 0})
    }
});

db.loadServerScripts();

encontrar_productos_sin_stock();