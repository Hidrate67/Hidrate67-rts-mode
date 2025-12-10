window.addEventListener('message', function(event) {
  const data = event.data
  if (data.action === 'toggle') {
    document.body.style.display = data.visible ? 'block' : 'none'
  }
})

document.getElementById('btnMove').addEventListener('click', () => {
  // Example order payload
  fetch('https://rcore/issueOrder', { method: 'POST', body: JSON.stringify({ squadId: 'squad_1', orderType: 'move', x: 0, y: 0 }) })
})

document.getElementById('btnHold').addEventListener('click', () => {
  fetch('https://rcore/issueOrder', { method: 'POST', body: JSON.stringify({ squadId: 'squad_1', orderType: 'hold' }) })
})
