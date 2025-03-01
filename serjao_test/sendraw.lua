local serjao = require("serjao_berranteiro/serjao_berranteiro")

local sla = io.open("trial.json", "rb")
local function main_server()

  return serjao.send_raw(sla, "json", 200)
end

serjao.server(3000, 5000, main_server)