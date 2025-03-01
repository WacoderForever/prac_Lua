local serjao = require("serjao_berranteiro/serjao_berranteiro")

local function main_server(rq)
  local json = {
    nome = "samuel",
    sla = "NULL",
    idade = 20
  }

  if rq.route == "/or" then
    return json
  end

  return serjao.send_json(json, 200)
end

serjao.server(3000,5000,main_server)