import { Controller } from "stimulus"
import $ from 'jquery'

export default class extends Controller {
  static targets = ["materialContainer", "recyclePoint"]

  connect() {
    this.materialContainerTargets.forEach((matContainer, i) => {
      if(i > 0) {
        $(matContainer).addClass("is-hidden")
      }else{
        $(matContainer).addClass("active-panel")
      }
    })
    this.collapseDetailsPanels()
  }
  
  collapseDetailsPanels() {
    this.recyclePointTargets.forEach((recyclePoint, _) => {
      $(recyclePoint).hide()
    })
  }

  openPanel(event) {
    event.preventDefault()

    $("a.is-active").removeClass("is-active")
    $(event.target).addClass("is-active")

    let currentPanel = $(".active-panel")
    currentPanel.removeClass("active-panel")
    currentPanel.addClass("is-hidden")
    
    let id = $(event.target).attr("href")
    $(`${id}`).removeClass("is-hidden")
    $(`${id}`).addClass("active-panel")

    this.collapseDetailsPanels()
  }

  showPoint(event) {
    event.preventDefault()

    let currentPanel = $(`.active-details`)
    currentPanel.slideUp()
    currentPanel.removeClass("active-panel")
    
    let clickedPanel = $($(event.target).attr("href"))
    clickedPanel.slideDown();
    clickedPanel.addClass("active-details")

    $(".panel-block.is-active").removeClass("is-active")
    $(event.target).addClass("is-active")
  }
}
