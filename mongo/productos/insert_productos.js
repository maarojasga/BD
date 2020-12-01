
/// funcion insertar_registro_proveedor
///
/// Args:
// nombre  [String]
// precio_venta [double]
// precio_proveedor [double]
// id_proveedor [ObjectId]
// caracteristicas [Array[Strings]]
// cantidad [double]
///
///Return:
///     new date
db.system.js.save({
    _id: "insertar_productos",
    value: function (nombre, precio_venta, precio_proveedor, id_proveedor, caracteristicas, cantidad, categoria) {
        if (db.proveedores.find({ "_id": ObjectId(id_proveedor) }).toArray().length <= 0) {
            return "El proveedor no existe, crea uno primero o verifica el ID"
        }
        let prod = db.productos.insertOne({
            "nombre": nombre,
            "precio_venta": precio_venta,
            "precio_proveedor": precio_proveedor,
            "id_proveedor": id_proveedor,
            "caracteristicas": caracteristicas,
            "cantidad": cantidad,
            "categoria": categoria,
        })
        db.proveedores.findOneAndUpdate({ "_id": ObjectId(id_proveedor) }, { $push: { "productos_id": prod.insertedId } })
        return "Producto agregado correctamente :)"
    }
});

db.loadServerScripts();

insertar_productos("Arduino", 999999, 888888, "5fc5b7c4113cef0c4ceb8f7c", ["Arr", "E"], 190, 'MicroControlador');
insertar_productos("Arduino", 999999, 888888, "5fc5b7c4113cef0c4ceb8f7c", ["Arr", "E"], 190, 'MicroControlador');
insertar_productos("Arduino", 999999, 888888, "5fc5b7c4113cef0c4ceb8f7c", ["Arr", "E"], 190, 'MicroControlador');
