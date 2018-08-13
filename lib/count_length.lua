local Counter, cTable, cString
function len(data)
    assort(Counter[type(data)])
    return Counter[type(data)](data)
end

function cTable(data)
    local count = 0
    for _ in pairs(data) do
        count = count + 1
    end
    return count
end

function cString(data)
    return #data
end

Counter = {
    ["table"] = cTable,
    ["string"] = cString
}
