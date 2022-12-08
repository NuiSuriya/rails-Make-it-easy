// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"


const likes = document.querySelectorAll(".like")

likes.forEach((like) => {

  like.addEventListener("click", () => {
    if(like.classList.contains("fa-regular")) {
      like.classList.remove("fa-regular")
      like.classList.add("fa-solid")
    } else {
      like.classList.add("fa-regular")
      like.classList.remove("fa-solid")
    }
  })
})
