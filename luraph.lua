local r = (type(syn) == "table" and type(syn.request) == "function" and syn.request) 
    or (type(request) == "function" and request) 
    or (type(http_request) == "function" and http_request)

local response = r({
    Url = "https://api.jnkie.com/api/v1/luascripts/delivery/ID_OF_YOUR_SCRIPT_IRL?v=2",
    Method = "POST",
    Headers = {["Content-Type"] = "text/plain"},
    Body = "KEYLESS" -- OR SERVICE NAME MAKE SURE KEYLESS TOGGLE ON
})

print("Step 1 - API Response:")
print("  Status: " .. tostring(response and response.StatusCode))
print("  Body: " .. tostring(response and response.Body))

if response and response.StatusCode == 200 and response.Body then
    local cdnUrl = response.Body:gsub("%s+", "") -- remove any whitespace
    
    print("\nStep 2 - Fetching from CDN: " .. cdnUrl)
    
    local scriptResponse = r({
        Url = cdnUrl,
        Method = "GET",
        Headers = {
            ["User-Agent"] = "Roblox/WinInet",
            ["Accept"] = "*/*",
            ["Referer"] = "https://api.jnkie.com/"
        }
    })
    
    print("  CDN Status: " .. tostring(scriptResponse and scriptResponse.StatusCode))
    print("  CDN Body length: " .. tostring(scriptResponse and scriptResponse.Body and #scriptResponse.Body))
    print("  CDN Body preview: " .. tostring(scriptResponse and scriptResponse.Body and scriptResponse.Body:sub(1, 100)))
    
    -- Handle redirects (302/303)
    if scriptResponse and (scriptResponse.StatusCode == 302 or scriptResponse.StatusCode == 303) then
        local headers = scriptResponse.Headers or scriptResponse.headers
        local location = type(headers) == "table" and (headers.Location or headers.location)
        print("  Redirect to: " .. tostring(location))
        
        if type(location) == "string" then
            scriptResponse = r({
                Url = location,
                Method = "GET",
                Headers = {
                    ["User-Agent"] = "Roblox/WinInet",
                    ["Accept"] = "*/*"
                }
            })
            print("  Redirect Status: " .. tostring(scriptResponse and scriptResponse.StatusCode))
        end
    end
    
    if scriptResponse and scriptResponse.StatusCode == 200 and scriptResponse.Body and #scriptResponse.Body > 0 then
        writefile("fetched.lrph.lua", scriptResponse.Body)
        print("\nLURAPH SAVED! Size: " .. tostring(#scriptResponse.Body) .. " bytes")
    else
        print("\nCDN fetch failed")
        if scriptResponse then
            print("  Status: " .. tostring(scriptResponse.StatusCode))
            print("  Body: " .. tostring(scriptResponse.Body))
        end
    end
else
    print("\nAPI request failed: " .. tostring(response and response.StatusCode) .. " - " .. tostring(response and response.Body))
end
