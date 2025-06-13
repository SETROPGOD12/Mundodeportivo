import bcrypt from 'bcrypt';
import{
    buscarUsuarioPorNombre,
    crearUsuario,
    obtenerRolPorId
}from '../models/authModel.js';

export const register = async (req, res) => {
    const {id_rol, nombre, correo, contraseña,telefono} = req.body;

    const userExistente = await buscarUsuarioPorNombre(nombre);
    if(userExistente){
        return res.status(400).json({message: 'Nombre ya registrada'})
    }
    const hash = await bcrypt.hash(contraseña, 10);
    await crearUsuario(id_rol, nombre, correo, hash, telefono);
    res.status(201).json ({message: 'Usuario creado exitosamente'});
};

export const login = async (req, res) => {
    const {nombre,contraseña} = req.body;
    const user = await buscarUsuarioPorNombre(nombre);
    
    if(!user) return res.status(400).json({message: 'Usuario no encontrado'});

    const esValido = await bcrypt.compare(contraseña, user.contraseña);
    if(!esValido) return res.status(401).json({message: 'Contraseña incorrecta'});

    const rol = await obtenerRolPorId(user.id_rol); 
    res.status(200).json({message: 'Login exitoso', rol});
};