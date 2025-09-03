<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juego de Cajas Sorpresa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>¡Elige una caja y gana tu premio!</h1>
    <div class="cajas">
        <div class="caja" data-premio="50$">Caja 1</div>
        <div class="caja" data-premio="100$">Caja 2</div>
        <div class="caja" data-premio="200$">Caja 3</div>
        <div class="caja" data-premio="500$">Caja 4</div>
        <div class="caja" data-premio="1000$">Caja 5</div>
        <div class="caja" data-premio="¡Gran Premio!">Caja 6</div>
    </div>
    <p id="premio"></p>
    <script src="script.js"></script>
</body>
</html>
body {
    font-family: Arial, sans-serif;
    text-align: center;
    background-color: #f9f9f9;
}

h1 {
    color: #ff4500;
}

.cajas {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 20px;
}

.caja {
    width: 100px;
    height: 100px;
    background-color: #ffd700;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    border-radius: 10px;
    font-weight: bold;
    transition: transform 0.3s;
}

.caja:hover {
    transform: scale(1.1);
}

#premio {
    margin-top: 20px;
    font-size: 1.5em;
    color: green;
    font-weight: bold;
}
const cajas = document.querySelectorAll('.caja');
const premioTexto = document.getElementById('premio');

cajas.forEach(caja => {
    caja.addEventListener('click', () => {
        const premio = caja.getAttribute('data-premio');
        premioTexto.textContent = `¡Ganaste ${premio}!`;
        cajas.forEach(c => c.style.pointerEvents = 'none'); // Solo se puede elegir una caja
    });
});
