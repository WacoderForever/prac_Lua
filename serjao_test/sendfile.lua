local serjao=require("serjao_berranteiro/serjao_berranteiro")

set_server.single_process=true
---@param request Request

local function dngkdh(request)

    return serjao.send_file("black_man.jpeg",200,"img/jpeg")
    
end

serjao.desktop("chromium",dngkdh,800,400)