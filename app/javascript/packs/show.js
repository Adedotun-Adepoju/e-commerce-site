const actionButton = document.getElementById("add-button")


actionButton.addEventListener('click', (e) => {
   console.log(actionButton)

   const id = actionButton.getAttribute("data-id")
   console.log(id)
})