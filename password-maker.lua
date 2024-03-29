local m = {}
local complex_characters = {
    "_", "-", "+", "-", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "'", '"', ',', '.', ':', ';'
}
local simple_characters = {
    "_", "-", "+", "-"
}

function m.init()
    -- Letters
    for i = 97, 122 do
        table.insert(complex_characters, string.char(i))
        table.insert(simple_characters, string.char(i))
    end
    for i = 65, 90 do
        table.insert(complex_characters, string.char(i))
        table.insert(simple_characters, string.char(i))
    end

    -- Numbers
    for i = 1, 9 do
        table.insert(complex_characters, tostring(i))
        table.insert(simple_characters, tostring(i))
    end
end

function m.generate(length, type)
    local password = ''
    if type == nil then
        type = 'simple'
    end
    for i = 1, length do
        local char = ''
        if string.lower(type) == "complex" then
            char = complex_characters[math.random(1, #complex_characters)]
        elseif string.lower(type) == "simple" then
            char = simple_characters[math.random(1, #simple_characters)]
        end
        password = password .. char
    end
    return password
end

return m
