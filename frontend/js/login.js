
document.getElementById('loginForm').addEventListener('submit', async (e) => {
    e.preventDefault();

    const nombre = document.getElementById('nombre').value;
    const contraseña = document.getElementById('contraseña').value;

    const res = await fetch('http://localhost:3000/api/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ nombre, contraseña }),
    });

    const data = await res.json();
    console.log('Rol recibido:', data.rol);

    if (res.status === 200) {
        alert(data.message);
        localStorage.setItem('rol', data.rol);
        localStorage.setItem('nombre', nombre);

        switch (data.rol.toLowerCase()) {
            case 'participante':
            case 'espectador':
                window.location.href = 'pages/usuario_inicio.html';
                break;
            case 'administrador':
                window.location.href = 'pages/admin.html';
                break;
            case 'coordinador':
                window.location.href = 'pages/coordinador.html';
                break;
            default:
                alert('Rol no reconocido: ' + data.rol);
        }
    } else {
        alert(data.message);
    }
});
