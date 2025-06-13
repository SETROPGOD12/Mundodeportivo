document.getElementById("loginForm").addEventListener("submit", async (e) => {
  e.preventDefault();

  const nombre = document.getElementById("nombre").value;
  const contraseña = document.getElementById("contraseña").value;

  try {
    const res = await fetch("http://localhost:3000/api/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ nombre, contraseña }),
    });

    const data = await res.json();

    alert(data.message); // "Login exitoso", "Contraseña incorrecta", etc.

    if (res.ok) {
      // Guardar el rol si lo necesitas más adelante
      localStorage.setItem("rol", data.rol);

      // Redirigir según rol
      switch (data.rol) {
        case 1: // Administrador
          window.location.href = "pages/admin.html";
          break;
        case 2: // Coordinador
          window.location.href = "pages/coordinador.html";
          break;
        case 3: // Participante
          window.location.href = "pages/usuario_inicio.html";
          break;
        default:
          alert("Rol no reconocido.");
      }
    }
  } catch (error) {
    console.error("Error en el login:", error);
    alert("No se pudo conectar con el servidor.");
  }
});
