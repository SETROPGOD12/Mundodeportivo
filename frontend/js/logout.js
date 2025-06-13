// logout.js
document.addEventListener('DOMContentLoaded', () => {
    //eliminar todos los datos agregados
    localStorage.clear();

    //redireccionar al login 
    window.location.href = './index.html';
});