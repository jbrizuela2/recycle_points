import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  static targets = ["notificationBox"]

  connect() {
    let flashMessage = $(this.notificationBoxTarget);
    setTimeout(function () {
      flashMessage.slideUp();
    }, 3000);
  }

  closeMessage() {
    $(this.notificationBoxTarget).slideUp();
  }
}
