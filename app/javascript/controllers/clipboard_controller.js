import { Controller } from "@hotwired/stimulus"
import Clipboard from "clipboard"

export default class extends Controller {
  static values = {
    successMessage: { type: String, default: "Copied!" },
    errorMessage: { type: String, default: "Failed!" },
  }

  connect() {
    this.clipboard = new Clipboard(this.element)
    this.clipboard.on("success", (e) => this.tooltip(this.successMessageValue))
    this.clipboard.on("error", (e) => this.tooltip(this.errorMessageValue))
  }

  disconnect() {
    this.clipboard.destroy()
  }

  tooltip(message) {
    tippy(this.element, {
      content: message,
      showOnCreate: true,
      onHidden: (instance) => {
        instance.destroy()
      }
    })
  }
}
