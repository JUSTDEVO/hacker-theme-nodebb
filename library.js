const meta = require.main.require("./src/meta")
const user = require.main.require("./src/user")

const library = module.exports

library.init = async (params) => {
  const { router, middleware } = params

  // Add custom routes if needed
  router.get("/admin/plugins/hacker", middleware.admin.buildHeader, renderAdmin)
  router.get("/api/admin/plugins/hacker", renderAdmin)
}

async function renderAdmin(req, res) {
  res.render("admin/plugins/hacker", {
    title: "Hacker Theme Settings",
  })
}

library.addAdminNavigation = async (header) => {
  header.plugins.push({
    route: "/plugins/hacker",
    icon: "fa-terminal",
    name: "Hacker Theme",
  })
  return header
}

library.defineWidgetAreas = async (areas) => {
  const locations = ["header", "sidebar", "footer"]
  const templates = [
    "categories.tpl",
    "category.tpl",
    "topic.tpl",
    "users.tpl",
    "unread.tpl",
    "recent.tpl",
    "popular.tpl",
    "top.tpl",
    "tags.tpl",
  ]

  templates.forEach((template) => {
    locations.forEach((location) => {
      areas.push({
        name: `${template.split(".")[0]} ${location}`,
        template: template,
        location: location,
      })
    })
  })

  return areas
}

library.getThemeConfig = async (config) => {
  config.hideSubCategories = false
  config.hideEmpties = false
  config.enableQuickReply = true
  return config
}

library.getAdminSettings = async (data) => {
  return data
}

library.saveUserSettings = async (data) => {
  return data
}

library.addProfileItem = async (data) => {
  data.links.push({
    id: "theme",
    route: "theme",
    icon: "fa-paint-brush",
    name: "Theme Settings",
    public: false,
  })
  return data
}

library.filterMiddlewareRenderHeader = async (data) => {
  data.templateData.bootswatchSkin = ""
  return data
}
