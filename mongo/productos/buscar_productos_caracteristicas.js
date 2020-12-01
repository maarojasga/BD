
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_caracteristicas",
    value: function (catacteristica) {
        if(db.productos.find({}).toArray().length<=0){
            return "No hay productos"
        }
        return db.productos.find({ "caracteristicas": catacteristica})
    }
});

db.loadServerScripts();

encontrar_productos_caracteristicas("Arr");