
/// funcion insertar_registro_proveedor
///
/// Args:
///     nombre_producto [String]
///Return:
///     elemntos que hay en stock
db.system.js.save({
    _id: "encontrar_productos_categoria",
    value: function (categoria) {
        if(db.productos.find({}).toArray().length<=0){
            return "No hay productos"
        }
        if(db.productos.find({ "categoria": categoria}).toArray().length<=0){
            return "No hay productos para la categoria deseada"
        }
        return db.productos.find({ "categoria": categoria})
    }
});

db.loadServerScripts();

encontrar_productos_categoria("microcontroller");