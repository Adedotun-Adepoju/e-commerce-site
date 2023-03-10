// const voiceSearch = document.querySelector('.voice-image')

// voiceSearch.addEventListener('click', (e)=>{
//     console.log(e.target)
// })

// const searchForm = document.forms["search-products"]

// searchForm.addEventListener('submit', (e) => {
//     e.preventDefault();

//     const value = searchForm.querySelector('input[type="text"]').value 
//     console.log(value)
// })

// function search(){
//     const value = searchForm.querySelector('input[type="text"]').value 
//     console.log(value)   
// }

const recordButton = document.getElementById('record-button');

recordButton.addEventListener('click', (e) => {
    const searchBar = e.target.parentElement
    const wrapper = e.target.closest(".sub-banner");
    const nav = wrapper.closest("nav")
    
    nav.removeChild(wrapper)
    let speechNotification = document.createElement('div');
    speechNotification.classList.add('speech-active')

    let header = document.createElement("h2");
    let headerText = document.createTextNode("Listening...")
    header.classList.add('text')
    header.append(headerText)

    let img = document.createElement("img");
    img.src = "https://icon-library.com/images/google-voice-search-icon/google-voice-search-icon-8.jpg"
    
    speechNotification.append(header, img);
    nav.append(speechNotification);
    console.log(nav)
})