import bcrypt from "bcrypt";
import { buscarUsuarioPorNombre, crearUsuario } from "../models/authModel.js";

// Define aquí el rol por defecto que quieres asignar.
const ROL_POR_DEFECTO = 3; // 3 = participante

export const register = async (req, res) => {
  try {
    const { nombre, correo, contraseña, telefono } = req.body;

    // Validación mínima
    if (!nombre || !correo || !contraseña || !telefono) {
      return res.status(400).json({ message: "Faltan campos requeridos." });
    }

    // ¿El usuario ya existe?
    const existente = await buscarUsuarioPorNombre(nombre);
    if (existente) {
      return res.status(400).json({ message: "Nombre ya registrado." });
    }

    // Hash de contraseña y creación
    const hash = await bcrypt.hash(contraseña, 10);
    await crearUsuario(ROL_POR_DEFECTO, nombre, correo, hash, telefono);

    res.status(201).json({ message: "Usuario creado exitosamente" });
  } catch (err) {
    console.error("Error en register:", err);
    res.status(500).json({ message: "Error interno del servidor" });
  }
};

export const login = async (req, res) => {
  try {
    const { nombre, contraseña } = req.body;

    const user = await buscarUsuarioPorNombre(nombre);
    if (!user) {
      return res.status(400).json({ message: "Usuario no encontrado" });
    }

    const valido = await bcrypt.compare(contraseña, user.contraseña);
    if (!valido) {
      return res.status(401).json({ message: "Contraseña incorrecta" });
    }

    res.status(200).json({ message: "Login exitoso", rol: user.id_rol });
  } catch (err) {
    console.error("Error en login:", err);
    res.status(500).json({ message: "Error interno del servidor" });
  }
};
