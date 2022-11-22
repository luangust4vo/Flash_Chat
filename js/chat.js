const form = document.querySelector(".typing-area"),
  sendBtn = form.querySelector("button"),
  inputField = form.querySelector(".input-field");

form.onsubmit = (e) => {
  e.preventDefault();
};

sendBtn.onclick = () => {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "../back/inserir-chat.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      inputField.value = "";
    }
  };

  let formData = new FormData(form);
  xhr.send(formData);
};

setInterval(() => {
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "../back/get-messages.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let data = xhr.response;
      if (!searchBar.classList.contains("active")) {
        usersList.innerHTML = data;
      }
    }
  };

  let formData = new FormData(form);
  xhr.send(formData);
}, 500);
