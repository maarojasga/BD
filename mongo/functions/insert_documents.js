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
    _id: "insertar_historial_transacciones",
    value: function (precio, id_proveedor, id_cliente, id_producto, cantidad) {
        if (db.clientes.find({ "_id": ObjectId(id_cliente) }).toArray().length <= 0) {
            return "El cliente no existe, crea uno primero o verifica el ID"
        }
        if (db.proveedores.find({ "_id": ObjectId(id_proveedor) }).toArray().length <= 0) {
            return "El proveedor no existe, crea uno primero o verifica el ID"
        }
        if (db.productos.find({ "_id": ObjectId(id_producto) }).toArray().length <= 0) {
            return "El producto no existe, crea uno primero o verifica el ID"
        }
        let prod = db.productos.find({ "_id": ObjectId(id_producto) })
        if (prod['cantidad'] < cantidad) {
            prod['cantidad'] += cantidad + 20
        }
        db.historial_transacciones.insertOne({
            "fecha": Date(),
            "precio": precio,
            "id_proveedor": id_proveedor,
            "id_cliente": id_cliente,
            "id_producto": id_producto,
            "cantidad": cantidad
        })
        prod['cantidad'] -= cantidad
        return "Operacion exitosa"
    }
});

db.loadServerScripts();

insertar_historial_transacciones(10, "5fc5b7c4113cef0c4ceb8f7c", "5fc5b70e113cef0c4ceb8f63","5fc5b8ec2761656b07dfeb09", 10);
