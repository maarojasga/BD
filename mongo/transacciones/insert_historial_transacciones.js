/// Args
///
///     cliente_id [Stirng] vericar si existe
///     fecha: auto
///

db.system.js.save({
    _id: "historial_transacciones",
    value: function (precio, id_producto, cantidad) {
        if (db.productos.find({ "_id": ObjectId(id_producto) }).toArray().length <= 0) {
            return "El producto no existe, crea uno primero o verifica el ID"
        }
        let proveedor = db.productos.findOne({ "_id": ObjectId(id_producto) })
        db.registro_provedores.insertOne({
            "fecha": Date(),
            "precio": precio,
            "id_producto": id_producto,
            "id_proveedor": proveedor['id_proveedor'],
            "cantidad": cantidad
        })
        return "Operacion exitosa"
    }
});

db.loadServerScripts();

insertar_registro_proveedor(10, "5fc5b7c4113cef0c4ceb8f7c", "5fc5b8ec2761656b07dfeb09", 10);
