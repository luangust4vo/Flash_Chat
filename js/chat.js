const form = document.querySelector(".typing-area"),
  sendBtn = form.querySelector("button"),
  inputField = form.querySelector(".input-field"),
  chatField = document.querySelector(".chat-field");

form.onsubmit = (e) => {
  e.preventDefault();
};

sendBtn.onclick = () => {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "../back/inserir-chat.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      inputField.value = "";
      scroll();
    }
  };

  let formData = new FormData(form);
  xhr.send(formData);
};

chatField.onmouseenter = () => {
  chatField.classList.add("active");
};
chatField.onmouseleave = () => {
  chatField.classList.remove("active");
};

setInterval(() => {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "../back/get-messages.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let data = xhr.response;
      chatField.innerHTML = data;
      if (!chatField.classList.contains("active")) {
        scroll();
      }
    }
  };

  let formData = new FormData(form);
  xhr.send(formData);
}, 500);

function scroll() {
  chatField.scrollTop = chatField.scrollHeight;
}
