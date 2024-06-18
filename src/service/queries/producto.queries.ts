const productoQueries = {
    selectAll: 'SELECT productoId, tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay FROM producto;',
    selectById: 'SELECT * from producto where productoId = ?;',
    updateFoto: 'update producto set fotoDelete = ?, foto  = ?, fotoDisplay  = ?  where productoId = ? ;'
  }
  
  export default productoQueries;
