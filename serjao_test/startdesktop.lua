local serjao=require("serjao_berranteiro/serjao_berranteiro")

local function whatever()
    return "Hello World"
end

serjao.desktop("chromium",whatever,800,400)