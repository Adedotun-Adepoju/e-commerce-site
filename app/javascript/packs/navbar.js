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
let recording = false;
let mediaRecorder;
let chunks = [];

navigator.mediaDevices.getUserMedia({ audio: true })
	.then(stream => {
		mediaRecorder = new MediaRecorder(stream);

    recordButton.addEventListener('click', (e) => {
        mediaRecorder.start();
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
        img.setAttribute('id', "stop-recording")
        img.src = "https://icon-library.com/images/google-voice-search-icon/google-voice-search-icon-8.jpg"
    
        speechNotification.append(header, img);
        nav.append(speechNotification);
    
        img.addEventListener('click', (e) => {
            mediaRecorder.stop();
            nav.removeChild(speechNotification);
            nav.append(wrapper);
        });
    });

		mediaRecorder.addEventListener('dataavailable', event => {
			chunks.push(event.data);
		});

		mediaRecorder.addEventListener('stop', () => {
			const audioBlob = new Blob(chunks);
			const audioUrl = URL.createObjectURL(audioBlob);
			const formData = new FormData();
			convertToLinear16(audioBlob);
			chunks = [];
		})
	})
	.catch(error => console.error(error));

	function convertToLinear16(audioBlob){
		const reader = new FileReader();
		reader.onload = function(event) {
			const audioData = event.target.result;
			const audioBuffer = new AudioBuffer({
				length: audioData.byteLength / 2,
				numberOfChannels: 1,
				sampleRate: 16000
			});
			const channelData = audioBuffer.getChannelData(0);
			const dataView = new DataView(audioData);
			for (let i = 0; i < channelData.length; i++) {
				channelData[i] = dataView.getInt16(i * 2, true) / 32768.0;
			}

			const linear16Data = new Int16Array(channelData.length);
			for (let i = 0; i < channelData.length; i++) {
				linear16Data[i] = Math.round(channelData[i] * 32767);
			}

			const linear16Blob = new Blob([linear16Data], { type: 'audio/l16' });
			const formData = new FormData();
			formData.append('audio_file', linear16Blob);
			fetch('audio/upload', {
				method: 'POST',
				body: formData
			})
			.then(response => {
				if (response.ok){
					console.log('Audio file uploaded successfully')						
				} else {
					console.log("Error uploading file:", response.statusText);						
				}
			})
		};
		reader.readAsArrayBuffer(audioBlob);
	}
