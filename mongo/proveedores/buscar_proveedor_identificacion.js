
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "listar_proveedores_por_identificacion",
    value: function (identificacion) {
        if (db.proveedores.find({}).toArray().length <= 0) {
            return "No hay proveedores"
        }
        return db.proveedores.find({"identificacion": identificacion})
    }
});

db.loadServerScripts();

listar_proveedores_por_identificacion();