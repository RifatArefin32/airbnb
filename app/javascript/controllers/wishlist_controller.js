import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["message"];

  addToWishlist(event) {
    event.preventDefault(); // Prevent the default button action

    const itemId = event.currentTarget.dataset.itemId; // Get the item ID

    fetch(`/api/wishlists`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').getAttribute('content') // Include CSRF token
      },
      body: JSON.stringify({ wishlist: { item_id: itemId } })
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      // Update the button text and any messages based on the response
      event.currentTarget.textContent = 'Added to Wishlist';
      this.messageTarget.textContent = data.message || 'Item added to wishlist!';
    })
    .catch(error => {
      console.error('Error:', error);
      this.messageTarget.textContent = 'Failed to add item to wishlist.';
    });
  }
}
