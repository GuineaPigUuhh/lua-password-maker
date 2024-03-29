local passwordmaker = require "password-maker" -- Import Stuff

local type = io.read("l")
local length = io.read("n")

passwordmaker.init()
print(passwordmaker.generate(length, type))
