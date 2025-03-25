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


  }
}
