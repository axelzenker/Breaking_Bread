import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';


export default class extends Controller {
  connect() {
    console.log(this.dashboardUrlValue);

  }
  static values = {
    dashboardUrl: String
  }

  fireSweetAlert() {
    const meal = document.querySelector('h1').innerText;

    swal.fire({
      position: 'top-end',
      icon: 'success',
      title: 'Your work has been saved',
      showConfirmButton: false,
      timer: 1500
    })

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
