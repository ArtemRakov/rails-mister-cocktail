var forms = document.querySelectorAll(".my-form")

function isBlank(string) {
  return string.match(/^\s*$/)
}

function setSuccess(input) {
  input.classList.remove("my-form-error");
  input.classList.add("my-form-success");
}

function setError(input) {
  input.classList.add("my-form-error");
  input.classList.remove("my-form-success");
}

function validate(event) {
  var input = event.target
  isBlank(input.value) ? setError(input) : setSuccess(input)
}

forms.forEach((form) => {
  form.addEventListener("blur", validate)
})
