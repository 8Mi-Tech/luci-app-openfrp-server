module("luci.controller.openfrp-server", package.seeall)

function index()
        if not nixio.fs.access("/etc/config/openfrp-server") then
                return
        end
        entry({"admin", "services", "openfrp-server"}, cbi("openfrp-server"), _("OpenFrp Server"), 20).dependent = true
        --entry({"admin", "services", "openfrp-server_status"}, call("openfrp-server_status"))
end
