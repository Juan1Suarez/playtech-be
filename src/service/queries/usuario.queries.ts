const usuarioQueries = {
    insert: 'insert into usuario (nombre, email, password, activo, rolId) values (?, ?, ?, ?, ?);',
    selectAll: 'SELECT usuarioId, nombre, email, password, activo, rolId FROM usuario;',
    delete: 'DELETE FROM usuario WHERE usuarioId = ?;',
    selectByEmail: 'SELECT * FROM usuario u join roles r on u.rolId = r.rolId WHERE u.email = ?',

  }
  
  export default usuarioQueries;
