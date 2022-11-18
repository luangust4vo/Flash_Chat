const searchBar = document.querySelector(".user .search input"),
  searchBtn = document.querySelector(".user .search button"),
  usersList = document.querySelector(".user .users-list");

searchBtn.onclick = () => {
  searchBar.classList.toggle("active");
  searchBar.focus();
  searchBtn.classList.toggle("active");
};
