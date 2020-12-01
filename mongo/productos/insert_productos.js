
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

insertar_productos("Arduino", 80000, 60000, "5fc664f403fedd055cff2a0a", ["Blanco", "Mediano"], 190, 'MicroControlador');
insertar_productos("Raspberry", 180000, 150000, "5fc664f403fedd055cff2a0a", ["Azul", "Rojo"], 120, 'Placa reducida');
insertar_productos("Servomotor", 18000, 1000, "5fc664f403fedd055cff2a0a", ["Fuerza", "Voltaje"], 110, 'Motor');
insertar_productos("Puente H", 8000, 5000, "5fc664f403fedd055cff2a0e", ["Motor", "Retroceso"], 170, 'Círcuito');
insertar_productos("Conversor analógico", 16500, 10000, "5fc664f403fedd055cff2a0e", ["Señal", "Digital"], 60, 'Convertidor');
insertar_productos("Conector Plug", 600, 200, "5fc664f403fedd055cff2a0e", ["Analogicas", "Conector"], 1620, 'Conector');
insertar_productos("Conector de poder AC", 5800, 2000, "5fc664f403fedd055cff2a11", ["Coaxial", "Cobertura"], 520, 'Conector');
insertar_productos("Interruptor basculante", 1200, 700, "5fc664f403fedd055cff2a11", ["Oscilación", "Dirección"], 345, 'Interruptor');
insertar_productos("Sensor encoder", 5800, 3200, "5fc664f403fedd055cff2a11", ["Impulso", "Digital"], 490, 'Sensor');
insertar_productos("Rollo de cable alambre", 30700, 17000, "5fc664f403fedd055cff2a12", ["Color", "Calibre"], 155, 'Cable');
insertar_productos("Microchip dspic33f", 27400, 16200, "5fc664f403fedd055cff2a0f", ["Utilidad", "Memoria"], 270, 'Microcontrolador');
insertar_productos("Sensor táctil capacitivo", 5200, 2700, "5fc664f403fedd055cff2a0f", ["Sensibilidad", "Alcance"], 930, 'Sensor');
insertar_productos("Controlador led", 26300, 16000, "5fc664f403fedd055cff2a0f", ["Fuerza", "Resistencia"], 1133, 'Controlador');
insertar_productos("Interruptor de encendido y apagado", 20600, 12000, "5fc664f403fedd055cff2a0f", ["Capacidad", "Resistencia"], 520, 'Interruptor');
insertar_productos("Integrado AND", 5600, 3200, "5fc664f403fedd055cff2a0f", ["Lógica", "Entradas"], 550, 'Integrado');
insertar_productos("Integrado OR", 4700, 1800, "5fc664f403fedd055cff2a0d", ["Lógica", "Entradas"], 550, 'Integrado');
insertar_productos("Integrado XOR", 7800, 5200, "5fc664f403fedd055cff2a0d", ["Lógica", "Entradas"], 550, 'Integrado');
insertar_productos("Integrado NAND", 5900, 2500, "5fc664f403fedd055cff2a0d", ["Lógica", "Entradas"], 550, 'Integrado');
insertar_productos("Integrado NOR", 6400, 3100, "5fc664f403fedd055cff2a0d", ["Lógica", "Entradas"], 550, 'Integrado');
insertar_productos("Led", 900, 300, "5fc664f403fedd055cff2a0d", ["Capacidad", "Color"], 1770, 'Led');
