const form = document.querySelector(".change form"),
  changeBtn = form.querySelector(".form .button button"),
  errorText = form.querySelector(".form .text-error");

form.onsubmit = (e) => {
  e.preventDefault();
};

changeBtn.onclick = () => {
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "../back/change_pass.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let data = xhr.response;
      if (data == "success") {
        location.replace("../pages/login.php");
      } else {
        errorText.textContent = data;
        errorText.style.display = "block";
      }
    }
  };

  let formData = new FormData(form);
  xhr.send(formData);
};
