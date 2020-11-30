db.customers.find({}).map(function (customer) {
    customer["items"] = [];
    db.items.find({ "_customer": customer._id }).forEach(function (item) {
        customer.items.push(item);
    })
    return customer;
})


db.historial.find().map(historial=>{
    cliente=db.clientes.findOne({"_id": historial.commprador_id})
    historial["telefono_cliente"]=cliente.telefono
    historial["puntos"]=cliente.puntos
    return historial
})


