import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // this.element.textContent = "wishlist connected"
    console.log('wishlist start');

    if(this.element.textContent === "Wishlisted") {
      this.element.textContent = "Wishlisted";
      this.element.classList.add("text-green-500");
    }
    else {
      this.element.textContent = "Add to wishlist";
      this.element.classList.add("text-red-500");
    }
  }

  updateWishlistStatus() {
    console.log(this.element.textContent);
    if(this.element.textContent === "Add to wishlist") {
      this.element.textContent = "Wishlisted";
      this.element.classList.add("text-green-500");
    }
    else {
      this.element.textContent = "Wishlisted";
      this.element.classList.add("text-red-500");
    }

    console.log(this.element.textContent);
  }
}
