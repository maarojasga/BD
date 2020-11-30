db.system.js.save({
    "_id": "test",
    value: (valor) => {
        return valor
    }
})

db.loadServerScripts()

test(10)









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
    }
});


db.loadServerScripts();

insertar_registro_proveedor(10, "5fc571e9fb5bcb2bbc3d94e6", "5fc57235fb5bcb2bbc3d94f1", 10);











