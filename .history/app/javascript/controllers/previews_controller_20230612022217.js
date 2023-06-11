import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="previews"
export default class extends Controller {
  static targets = ["input", ""]
  connect() {
    console.log("Connecting to data-controller");
  }
}
