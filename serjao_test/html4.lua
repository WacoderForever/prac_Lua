local serjao=require("serjao_berranteiro/serjao_berranteiro")

set_server.single_process=true
---@param request Request

local num=0
local function test(request)

    if request.route=="/increment" then
        num=num+1
        return serjao.send_html(h1("This is a counter:",tostring(num),{id="num"},"<br>",
                                    button("Increase",{
                                        ["hx-trigger"]="click",
                                        ["hx-target"]="#num",
                                        ["hx-post"]="/increment",
                                        ["hx-swap"]="innerHTML"
                                    }),
                                    button("Decrease",{
                                        ["hx-trigger"]="click",
                                        ["hx-post"]="/decrease",
                                        ["hx-target"]="#num",
                                        ["hx-swap"]="innerHTML"
                                    })
                                ))
    end
    if request.route=="/decrease" then
        num=num-1
        return serjao.send_html(h1("This is a counter:",tostring(num),{id="num"},"<br>",
                                    button("Increase",{
                                        ["hx-trigger"]="click",
                                        ["hx-target"]="#num",
                                        ["hx-post"]="/increment",
                                        ["hx-swap"]="innerHTML"
                                    }),
                                    button("Decrease",{
                                        ["hx-trigger"]="click",
                                        ["hx-post"]="/decrease",
                                        ["hx-target"]="#num",
                                        ["hx-swap"]="innerHTML"
                                    })))
    end
    local html=html(
                    head(
                        title("Counter"),
                        script({src="https://unpkg.com/htmx.org@1.9.12"})
                    ),
                    body(
                        h1("This is a counter:",tostring(num),{id="num"},
                            "<br>",
                            button("Increase",{
                                ["hx-trigger"]="click",
                                ["hx-post"]="/increment",
                                ["hx-target"]="#num",
                                ["hx-swap"]="innerHTML",
                            }),
                            button("Decrease",{
                                ["hx-trigger"]="click",
                                ["hx-post"]="/decrease",
                                ["hx-target"]="#num",
                                ["hx-swap"]="innerHTML"
                            })
                        )
                    )
                )
    return serjao.send_html(html,200)
end

serjao.desktop("chromium",test,800)