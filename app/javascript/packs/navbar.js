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

		// let sound = new Audio('../../assets/audio/blip.mp3')
		// console.log("here")

		// var audioStart = document.getElementById("blip-in");
		// audioStart.play();
		
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
			// var audioStop = document.getElementById("blip-out");
			// audioStop.play();
			const audioBlob = new Blob(chunks, { type: 'audio/mp3' });
			const audioUrl = URL.createObjectURL(audioBlob);
			const formData = new FormData();
			formData.append('audio_file', audioBlob);

			fetch('/audio/upload', {
				method: 'POST',
				body: formData
			})
			.then(response => {
				if (response.ok){
					window.location.href = response.url
				} else {
					console.log("Error uploading file:", response.statusText);
				}
			})
			.catch(error => console.error(error));
			chunks = [];
		})
	})
	.catch(error => console.error(error));