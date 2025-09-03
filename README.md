<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Juego de Cajas Sorpresa</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      background: linear-gradient(135deg, #ff0066, #ffcc00);
      margin: 0;
      padding: 20px;
    }
    h1 {
      color: #fff;
      text-shadow: 2px 2px 6px #000;
    }
    .cajas {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 15px;
      margin-top: 30px;
    }
    .caja {
      width: 100px;
      height: 100px;
      background-color: #ffd700;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      border-radius: 12px;
      font-weight: bold;
      transition: transform 0.3s, background 0.3s;
      box-shadow: 0px 4px 10px rgba(0,0,0,0.5);
    }
    .caja:hover {
      transform: scale(1.1);
    }
    #premio {
      margin-top: 20px;
      font-size: 1.5em;
      color: #32cd32;
      font-weight: bold;
    }
    #reiniciar {
      margin-top: 20px;
      padding: 12px 25px;
      font-size: 1em;
      background: #ff4500;
      color: #fff;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      display: none;
      transition: 0.3s;
    }
    #reiniciar:hover {
      background: #e63e00;
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  <h1>🎁 ¡Elige una caja y gana tu premio! 🎁</h1>
  <div class="cajas">
    <div class="caja" data-premio="50$">Caja 1</div>
    <div class="caja" data-premio="100$">Caja 2</div>
    <div class="caja" data-premio="200$">Caja 3</div>
    <div class="caja" data-premio="500$">Caja 4</div>
    <div class="caja" data-premio="1000$">Caja 5</div>
    <div class="caja" data-premio="🎉 ¡Gran Premio!">Caja 6</div>
  </div>
  <p id="premio"></p>
  <button id="reiniciar">🔄 Jugar de nuevo</button>

  <script>
    const cajas = document.querySelectorAll('.caja');
    const premioTexto = document.getElementById('premio');
    const reiniciarBtn = document.getElementById('reiniciar');

    cajas.forEach(caja => {
      caja.addEventListener('click', () => {
        const premio = caja.getAttribute('data-premio');
        premioTexto.textContent = `🎉 ¡Ganaste ${premio}! 🎁`;

        // Marcar en verde la caja seleccionada
        caja.style.backgroundColor = "#32cd32";

        // Bloquear todas las cajas
        cajas.forEach(c => c.style.pointerEvents = 'none');

        // Mostrar botón reinicio
        reiniciarBtn.style.display = "inline-block";
      });
    });

    reiniciarBtn.addEventListener('click', () => {
      premioTexto.textContent = "";
      cajas.forEach(c => {
        c.style.backgroundColor = "#ffd700"; // color original
        c.style.pointerEvents = 'auto';
      });
      reiniciarBtn.style.display = "none";
    });
  </script>
</body>
</html>
