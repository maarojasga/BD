
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "listar_clientes_por_nombre",
    value: function (nombre) {
        if (db.clientes.find({}).toArray().length <= 0) {
            return "No hay clientes"
        }
        return db.clientes.find({"nombre": nombre})
    }
});

db.loadServerScripts();

listar_clientes_por_nombre();