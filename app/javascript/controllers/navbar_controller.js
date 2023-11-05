// app/javascript/controllers/navbar_controller.js

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menuItems"];

  toggleMenu() {
    this.menuItemsTarget.classList.toggle("hidden");
  }
}
