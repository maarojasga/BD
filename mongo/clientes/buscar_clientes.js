
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "listar_clientes",
    value: function () {
        if (db.clientes.find({}).toArray().length <= 0) {
            return "No hay clientes"
        }
        return db.clientes.find({})
    }
});

db.loadServerScripts();

listar_clientes();