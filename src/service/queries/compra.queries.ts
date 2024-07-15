const compraQueries = {
    selectCompras: 'select c.compraId, u.usuarioId , u.nombre , u.email, c.fecha, p.productoId , p.modelo , p.precio from compra c join usuario u on c.usuarioId = u.usuarioId join producto p on c.productoId = p.productoId;',
    insertCompra: 'insert into compra  (fecha, productoId, usuarioId) values (UTC_TIMESTAMP(), ?, ?);'
  }

  export default compraQueries;