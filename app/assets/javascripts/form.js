const forms = document.querySelectorAll(".my-form")

const isBlank = (string) => {
  return string.match(/^\s*$/)
}

const setSuccess = (input) => {
  input.classList.remove("my-form-error");
  input.classList.add("my-form-success");
}

const setError = (input) => {
  input.classList.add("my-form-error");
  input.classList.remove("my-form-success");
}

const validate = (event) => {
  const input = event.target
  isBlank(input.value) ? setError(input) : setSuccess(input)
}



forms.forEach((form) => {
  form.addEventListener("blur", validate)
})
