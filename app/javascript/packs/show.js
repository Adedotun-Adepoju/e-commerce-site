const actionButton = document.getElementById("add-button")


actionButton.addEventListener('click', (e) => {
   console.log(actionButton)

   const item_id = actionButton.getAttribute("data-id")
   
   fetch('cart', {
      method: 'POST',
      headers: {
         'Content-Type': 'application/json'
      },
      body: JSON.stringify({
         item_id: item_id
      })
   })
   .then(response => console.log(response))
   .catch(error => {
      console.log(error)
   })
})