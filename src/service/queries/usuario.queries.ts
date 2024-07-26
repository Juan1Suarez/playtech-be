const usuarioQueries = {
    insert: 'insert into usuario (nombre, email, password, activo, rolId) values (?, ?, ?, ?, ?);',
    selectAll: 'SELECT usuarioId, nombre, email, password, activo, rolId FROM usuario;',
    delete: 'update usuario set activo = 0 WHERE usuarioId = ?;',
    selectByEmail: 'SELECT * FROM usuario u join roles r on u.rolId = r.rolId WHERE u.email = ?',
    selectByEmailExistente: 'SELECT usuarioId, email, password, rolId, activo FROM usuario WHERE email = ?',
    selectById: 'SELECT * FROM usuario WHERE usuarioId = ?',
    activarUsuario:'UPDATE usuario SET nombre = ?, password = ?, activo = 1 WHERE usuarioId = ?',
  }
  
  export default usuarioQueries;