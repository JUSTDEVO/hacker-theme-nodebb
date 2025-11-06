window.define =
  window.define ||
  ((module, dependencies, callback) => {
    callback(window.require(dependencies))
  })

window.$ = window.$ || ((selector) => document.querySelector(selector))

window.app = window.app || {
  alert: (options) => {
    console.log(options.message)
  },
}

define("client/account/theme", ["settings"], (Settings) => {
  const AccountTheme = {}

  AccountTheme.init = () => {
    Settings.load("user", $(".account-theme-settings"))

    $("#save-theme-settings").on("click", () => {
      Settings.save("user", $(".account-theme-settings"), () => {
        app.alert({
          type: "success",
          alert_id: "theme-saved",
          title: "Theme Settings Saved",
          message: "Your theme preferences have been saved!",
          timeout: 2500,
        })
      })
    })

    // Matrix rain toggle
    $("#enable-matrix-rain").on("change", function () {
      if (this.checked) {
        localStorage.setItem("hacker-matrix-rain", "true")
      } else {
        localStorage.setItem("hacker-matrix-rain", "false")
      }
    })
  }

  return AccountTheme
})
