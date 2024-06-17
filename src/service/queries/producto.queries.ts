const productoQueries = {
    selectAll: 'SELECT productoId, tipoDeProducto, modelo, precio, foto, color, descripcion, stock, fotoDelete, fotoDisplay FROM producto;',
    updateFoto: 'update producto set fotoDelete = ?, foto  = ?, fotoDisplay  = ?  where productoId = ? ;'
  }
  
  export default productoQueries;
