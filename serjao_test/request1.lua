local serjao=require("serjao_berranteiro/serjao_berranteiro")

local function ratataa(request)

    local url=request.url
    local method=request.method
    local route=request.route

    print("url: ",url,"\nMethod:",method,"\nRoute:",route,"\n\n")

    return "Hello world"
end

serjao.desktop("chromium",ratataa,nil,400)