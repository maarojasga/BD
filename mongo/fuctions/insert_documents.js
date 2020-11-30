/// funcion insertar_registro_proveedor
///
/// Args:
///     precio [double]: precio producto
///     id_proveedor [ObjectId]: mongo object id_proveedor
///     id_producto [ObjectId]: mongo object id_producto
///     cantidad [double]: cantidad
///
///Return:
///     new date
db.system.js.save({
    _id: "insertar_registro_proveedor",
    value: function (precio, id_proveedor, id_producto, cantidad) {
        if (db.proveedor.find({ "_id": ObjectId(id_proveedor) }).toArray().length <= 0) {
            return "El proveedor no existe, crea uno primero o verifica el ID"
        }
        db.provedores.insertOne({
            "fecha": Date(),
            "precio": precio,
            "id_producto": id_producto,
            "id_proveedor": id_proveedor,
            "cantidad": cantidad
        })
        return "Operacion exitosa"
    }
});



db.loadServerScripts();

insertar_registro_proveedor(10, "5fc571e9fb5bcb2bbc3d94e6", "5fc57235fb5bcb2bbc3d94f1", 10);
