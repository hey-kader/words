# Words \- some words 

inspired by the thing in emacs \(maybe even orgmode\) for quick jots

i used to have a vim plugin for padestrian\-style text editing \(think microsoft word\)
it was really useful to get ideas on *paper* in real time

i was going to use this, but first have just implemented
the native websters 1913, which happens to be from BSD '93 rockyou\.txt\)\[https://github\.com/zacheller/rockyou\.git\]

\(

TODO:
	\- \[x\] \*\* print out the wordlist \(using rockyou\.txt for notorieties sake\) 
	\- \[ \] \*\* is phitoplasm a word? dont ask me, ask isword\(\)\!
	\- \[ \] \*\* crazy\-cool ajax\-type preindoctrinative\-google\-type autocomplete gone wild 

**code**

this is where the words are unpacked

```lua
words = {}
```

split the string into an *actual* dictionary
\(really its just a wordlist becasue the 
key,value pair includes an index,
not a definition\)

```lua
function split (tape, delim)
	local payload = {}
	for word in tape.gmatch(tape, "[^\r"..delim.."]+") do
		table.insert(payload, word)
	end  
	return payload 
end
```

hardcoded path to 1913 websters
require core for slurp method

```lua
path = '/usr/share/dict/words'
core = require "core"
```

assemble the tape, convert it to a table
return the table \(array\) of words

```lua
local wordstr = core.slurp(path)
words = split(wordstr, '\n')
return words
```
