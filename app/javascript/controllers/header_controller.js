import { Controller } from "@hotwired/stimulus"
import { enter, leave, toggle } from "el-transition"


export default class extends Controller {

  static targets = ['openUserMenu', 'dropdown', ]

  connect() {
    // console.log("Header connected");
    // console.log();

    this.openUserMenuTarget.addEventListener("click", (e) => {
      console.log("Header Click");
      this.toggleDropdown(this.dropdownTarget);
    })
  }

  toggleDropdown(element) {
    toggle(element).then(() => {
      console.log("Enter transition complete");
    })
  }

  closeDropdown() {
    leave(element).then(() => {
      element.destroy();
    })
  }
}