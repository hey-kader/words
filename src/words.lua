





















words = {}








function split (tape, delim)
	local payload = {}
	for word in tape.gmatch(tape, "[^\r"..delim.."]+") do
		table.insert(payload, word)
	end  
	return payload 
end






path = '/usr/share/dict/words'
core = require "core"






local wordstr = core.slurp(path)
words = split(wordstr, '\n')
return words

