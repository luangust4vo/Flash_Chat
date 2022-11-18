const passField = document.querySelector(".form input[type='password']"),
  toggleEl = document.querySelector(".form .form-field i");

toggleEl.onclick = () => {
  if (passField.type == "password") {
    passField.type = "text";
    toggleEl.classList.add("active");
  } else {
    passField.type = "password";
    toggleEl.classList.remove("active");
  }
};
