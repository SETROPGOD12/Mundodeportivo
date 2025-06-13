document
  .getElementById("registerForm")
  .addEventListener("submit", async (e) => {
    e.preventDefault();

    const nombre = document.getElementById("nombre").value.trim();
    const correo = document.getElementById("correo").value.trim();
    const contraseña = document.getElementById("contraseña").value;
    const confirmar = document.getElementById("confirmar").value;
    const telefono = document.getElementById("telefono").value.trim();

    if (contraseña !== confirmar) {
      alert("Las contraseñas no coinciden");
      return;
    }

    try {
      const res = await fetch("http://localhost:3000/api/register", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ nombre, correo, contraseña, telefono }),
      });

      const data = await res.json();

      if (res.ok) {
        alert(data.message); // «Usuario creado exitosamente»
        window.location.href = "../index.html";
      } else {
        alert(data.message || "Error en el registro");
      }
    } catch (error) {
      console.error("Fallo de red:", error);
      alert("No se pudo conectar con el servidor.");
    }
  });
