This gem was created for game Tamagochi.
But it can be used for completely different purposes (for example, to fill in the content of your html document).
The gem works with an already created HTML file. (Which, it seems to me, is more difficult to implement than creating a new file and filling it on the go - a note for my teachers :)).
Example:
tamgem = TamagochiGem.new (name of the HTML document, content for writing, cutting scripts)
By default, the name of the HTML document is "index.html" and the script cutting is "false".
When cutting scripts is false, this means that the method will cut js or html code.
To insert content inside the <body> tag, there must be a place reserved for it (for example, spaces).
