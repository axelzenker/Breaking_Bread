import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';


export default class extends Controller {
  connect() {
    console.log(this.dashboardUrlValue);

  }
  static values = {
    dashboardUrl: String
  }
const meal = document.querySelector('h1').innerHtml;
  fireSweetAlert() {
    swal(`You just ordered 1x ${meal}`, {
      buttons: "go to dashboard",
    }).then((value) => {
      if (value) {
        window.location.replace(this.dashboardUrlValue)
      } else{
        window.location.reload()

      }
    });
  }


}
