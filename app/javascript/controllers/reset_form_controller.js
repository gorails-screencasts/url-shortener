import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  reset() {
    this.element.reset()
    this.element.querySelector("[autofocus='autofocus']")?.focus()
  }
}
