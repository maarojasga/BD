
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_nombre",
    value: function (nombre_producto) {
        if(db.productos.find({ "nombre": nombre_producto}).toArray().length<=0){
            return "Producto no encontrado"
        }
        return db.productos.find({ "nombre": nombre_producto})
    }
});

db.loadServerScripts();

encontrar_productos_nombre("arduino");