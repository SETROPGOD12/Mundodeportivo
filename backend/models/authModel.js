import { pool } from '../config/db.js';

export const crearUsuario = async (id_rol, nombre, correo, contraseña, telefono) => {
    const [result] = await pool.query(
        'INSERT INTO usuarios (id_rol, nombre, correo, contraseña, telefono) VALUES (?,?,?,?,?)',
        [id_rol, nombre, correo, contraseña, telefono]
    );
    return result.insertId;
};

export const buscarUsuarioPorNombre = async (nombre) => {
    const [rows] = await pool.query(
        'SELECT * FROM usuario WHERE nombre = ?',
        [nombre]
    );
    return rows[0];
};

export const obtenerRolPorId = async (id_rol) => {
    const [rows] = await pool.query(
    'SELECT nombre FROM rol WHERE id = ?',
    [id_rol]    
    );
    return rows[0]?.nombre;
};