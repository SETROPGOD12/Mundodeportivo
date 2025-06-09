import { pool } from '../config/db.js';

export async function verificarRol(req, res, next ) {
    try{
        const {nombre,rol} = req.body;

        if(!nombre || !rol){
            return res.status(400).json({message: 'nombre y rol son obligatorios'});
        }
        const[result] = await pool.query(
            'SELECT * FROM usuario WHERE correo = ? AND id_rol = ?',
            [nombre, rol]
        );
        if(result.length === 0){
            return res.status(403).json({message: 'Acceso no autorizado: rol incorrecto'});
        }
        next();
    }catch (error) {
        console.error('Error en authmiddleware', error);
        res.status(500).json({message: 'Error del servidor al verificar el rol'});
    }
    
}