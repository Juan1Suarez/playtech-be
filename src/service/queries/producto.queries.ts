const productoQueries = {
    selectAll: 'SELECT productoId, tipoDeProductoId, tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay FROM producto;',
    selectById: 'SELECT * from producto where productoId = ?;',
    updateFoto: 'update producto set fotoDelete = ?, foto  = ?, fotoDisplay  = ?  where productoId = ? ;',
    delete: 'DELETE FROM producto WHERE productoId = ?;',
    insert: 'insert into producto (tipoDeProducto, modelo, precio, color, descripcion, stock) values (?, ?, ?, ?, ?, ?);',
    updateProducto:'update producto set tipoDeProducto = ?, modelo = ?, precio = ?, color = ?, descripcion = ?, stock = ?  where productoId = ? ;',
    selectByGrupo: 'SELECT p.* FROM producto p JOIN tipoDeProducto t ON p.tipoDeProductoId = t.tipoDeProductoId WHERE t.tipoDeProductoId = ?;',
    selectByTipoDeProducto: 'SELECT * from tipoDeProducto;',
  }
  
  export default productoQueries;
