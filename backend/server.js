import cors from 'cors';
import express from 'express';
import path from 'path';
import { fileURLToPath } from './routes/authRoutes.js';

const app = express();
app.use(cors());
app.use(express.json());
// para obtener __dirname con ES Modules
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Servir archivos estaticos desde el frontend
app.use(express.static(path.join(__dirname,'../frontend')));

// Montar las rutas de atenticacion
app.use('/api', authRoutes); // <-- añadido

// Ruta raiz que sirve index.html por defecto 
app.get('/',(req, res) => {
    res.sendFile(path.join(__dirname,'../frontend/index.html'));
});
app.listen(3000,() => {
    console.log('Servidor corriendo en http://localhost:3000');
});