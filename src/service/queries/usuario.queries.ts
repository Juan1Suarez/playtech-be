const usuarioQueries = {
    insert: 'insert into usuario (nombre, email, password, activo, rolId) values (?, ?, ?, ?, ?);',
    selectAll: 'SELECT usuarioId, nombre, email, password, activo, rolId FROM usuario;',
    delete: 'DELETE FROM usuario WHERE usuarioId = ?;'
  }
  
  export default usuarioQueries;
