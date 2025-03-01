local serjao=require("../serjao_berranteiro/serjao_berranteiro")

set_server.single_process=true

---@param request Request

local function myuk(request)

    if request.route == "/kill" then
        serjao.kill()
    end

    local html= html(
                    head(
                        title("Hello World"),
                        script()
                    ),
                    body(
                        h1("Hello World"),
                        button("Press Here")
                    )

                    )
    return serjao.send_html(html,200)
end

serjao.desktop("chromium",myuk,800,400)