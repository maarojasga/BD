
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_identificacion",
    value: function (producto_id) {
        if (db.productos.find({}).toArray().length <= 0) {
            return "No hay productos"
        }
        return db.productos.find({ "_id": ObjectId(producto_id) })
    }
});

db.loadServerScripts();

encontrar_productos_identificacion("5fc5b8ec2761656b07dfeb09");