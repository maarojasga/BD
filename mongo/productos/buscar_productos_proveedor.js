
/// funcion insertar_registro_proveedor
///
/// Args:
///     id_proveedor [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_proveedor",
    value: function (id_proveedor) {
        if (db.proveedores.find({ "_id": ObjectId(id_proveedor) }).toArray().length <= 0) {
            return "El proveedor no existe"
        }
        return db.productos.find({ "id_proveedor": id_proveedor })
    }
});

db.loadServerScripts();

encontrar_productos_proveedor("5fc5b7c4113cef0c4ceb8f7c");