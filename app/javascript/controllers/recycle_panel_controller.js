import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  static targets = ["materialContainer"]

  connect() {
    this.materialContainerTargets.forEach((matContainer, i) => {
      if(i > 0) {
        $(matContainer).addClass("is-hidden")
      }else{
        $(matContainer).addClass("active-panel")
      }
    })
  }

  openPanel(event) {
    event.preventDefault()

    $("a.is-active").removeClass("is-active")
    $(event.target).addClass("is-active")

    let current_panel = $(".active-panel")
    current_panel.removeClass("active-panel")
    current_panel.addClass("is-hidden")
    
    let id = $(event.target).attr("href")
    $(`${id}`).removeClass("is-hidden")
    $(`${id}`).addClass("active-panel")
  }
}
