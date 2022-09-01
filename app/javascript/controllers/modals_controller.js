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
    swal("Are you sure you want to do this?", {
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
