local serjao = require("serjao_berranteiro/serjao_berranteiro")


set_server.single_process = true

---@param request Request
local function teste(request)

  if "/kill" == request.route then
    serjao.kill()
  end

  local html =html(
                    head(
                          title("Hello Word"),
                          script()
                    ),
                    body(
                          h1("Hello Word"),
                          button("Press here"),
                          serjao.component("h2","Todfodfo")
                    )
                )
                
    return serjao.send_html(html,200)
end

serjao.desktop("chromium", teste, 800,400)