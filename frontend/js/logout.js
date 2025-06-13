
function logout() {
  // Borrar datos del usuario (ajusta según lo que guardes)
  localStorage.clear();

  // Redirigir al login reemplazando historial (no se puede volver atrás)
  const path = window.location.pathname;
  const depth = path.split('/').filter(Boolean).length;
  const prefix = '../'.repeat(depth - 1);

  location.replace(`${prefix}index.html`);
}

