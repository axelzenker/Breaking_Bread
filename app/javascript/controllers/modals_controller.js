import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';


export default class extends Controller {
  connect() {
    console.log(this.dashboardUrlValue);
    console.log("Test");

  }
  static values = {
    dashboardUrl: String
  }

  fireSweetAlert() {
    console.log("Test")
    const meal = document.querySelector('h1').innerText;
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
