const searchBar = document.querySelector(".user .search input"),
  searchBtn = document.querySelector(".user .search button"),
  usersList = document.querySelector(".user .users-list");

searchBtn.onclick = () => {
  searchBar.classList.toggle("active");
  searchBar.focus();
  searchBtn.classList.toggle("active");
};

searchBar.onkeyup = ()=>{
  let searchUser = searchBar.value
  let xhr = new XMLHttpRequest();
  xhr.open("POST", "../back/busca.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let data = xhr.response;
      usersList.innerHTML = data;
    }
  };
  xhr.setRequestHeader("Content-type", "spplication/x-www-form-url-encoded")
  xhr.send("searchUser=" + searchUser)
}

setInterval(()=>{
  let xhr = new XMLHttpRequest();
  xhr.open("GET", "../back/users.php", true);
  xhr.onload = () => {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let data = xhr.response;
      usersList.innerHTML = data;
    }
  };
  xhr.send()
}, 500)