local serjao=require("serjao_berranteiro/serjao_berranteiro")

set_server.single_process=true

---@param request Request
local function gizguz(request)

    print(request.header.size)
    print(request.params.size)

    if request.route =='/gizguz' then
        return html(body(h1("aaaaa")))
    end
    if request.route == '/a' then
        local v = nil .. 10
    end
    
    return {name="Seth"},404
end

serjao.desktop("chromium",gizguz,nil,400)

