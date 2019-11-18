import { Controller } from 'stimulus'
import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'

export default class extends Controller {
  static targets = ['selectInput']

  connect () {
    $(this.selectInputTarget).select2()
  }
}
