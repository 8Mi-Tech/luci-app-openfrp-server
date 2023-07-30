local m, s

m = Map("openfrp-server", translate("OpenFrp Server"), translate("OpenFrp Server is OpenFrp's Backend"))

m:section(SimpleSection).template  = "openfrp-server_status"

s=m:section(TypedSection, "openfrp-server", translate("Global Settings"))
s.addremove=false
s.anonymous=true

s:option(Flag, "enabled", translate("Enable")).rmempty=false

return m