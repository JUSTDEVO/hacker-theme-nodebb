window.define = window.define || ((module, dependencies, callback) => callback(window.jQuery, window.app))

window.$ = window.$ || window.jQuery
window.app = window.app || {}

define("admin/plugins/hacker", ["settings"], (Settings) => {
  const Admin = {}

  Admin.init = () => {
    Settings.load("hacker", $(".hacker-settings"))

    $("#save").on("click", () => {
      Settings.save("hacker", $(".hacker-settings"), () => {
        window.app.alert({
          type: "success",
          alert_id: "hacker-saved",
          title: "Settings Saved",
          message: "Hacker theme settings have been saved successfully!",
          timeout: 2500,
        })
      })
    })
  }

  return Admin
})
