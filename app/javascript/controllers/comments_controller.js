import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  // initialize() {
  //   console.log("Initialize.")
  // }
  // connect() {
  //   // this.element.textContent = "Hello World!"
  //   console.log("Hello Stimulus")
  // }

  toggleForm(event) {
    console.log("Clicked the edit buttong. toggleForm.")
    event.preventDefault();
    event.stopPropagation();
    const formId = event.params["form"];
    console.log(formId);
    const editForm = document.getElementById(formId);
    editForm.classList.toggle('d-none');
    editForm.classList.toggle('mt-5');
    const commentBodyId = event.params["body"];
    console.log(commentBodyId)
    const editBody = document.getElementById(commentBodyId);
    editBody.classList.toggle('d-none');
    editForm.classList.toggle('mt-5');

    const editButtonId = event.params["edit"];
    console.log(editButtonId);
    const editButton = document.getElementById(editButtonId);
    console.log(editButton);
    this.toggleEditButton(editButton)
  }

  toggleEditButton(editButton) { 
    if (editButton.innerText == "Edit") {
      editButton.innerText = "Cancel";
      this.toggleEditButtonClass(editButton)
    } else {
      editButton.innerText = "Edit";
      this.toggleEditButtonClass(editButton)
    }
  }

  toggleEditButtonClass(editButton) {
    editButton.classList.toggle("btn-secondary");
    editButton.classList.toggle("btn-warning");
  }


}
