const voiceSearch = document.querySelector('.voice-image')

voiceSearch.addEventListener('click', (e)=>{
    console.log(e.target)
})

const searchForm = document.forms["search-products"]

searchForm.addEventListener('submit', (e) => {
    e.preventDefault();

    const value = searchForm.querySelector('input[type="text"]').value 
    console.log(value)
})

function search(){
    const value = searchForm.querySelector('input[type="text"]').value 
    console.log(value)   
}