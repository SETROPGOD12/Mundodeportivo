document.getElementById('loginForm') addEventListener('submit', async (e) => {
    e.preventDefault();

    const nombre = document.getElementById('nombre').value;
    const contraseña = document.getElementById('contraseña').value;

    const res = await fetch('http://localhost:3000/api/login',{
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({nombre, contraseña}),
    });
    const data = await res.json();

    if(res.status === 200) {
        //guarda el rol en localStorage
        localStorage.setItem('rol', data.rol);
        localStorage.setItem('nombre', nombre); // guarda el nombre tambien 
        
        //redirigir segun el rol
        if(data.rol === 'participante')
    }
})