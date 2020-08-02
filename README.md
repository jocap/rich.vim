__rich.vim__ adds visual rich text formatting to plain text files. It
is very useful for vim-based note taking.

![Screenshot of rich.vim](https://raw.githubusercontent.com/jocap/rich.vim/211894fe594a97ffeb56a8dfe2ba0a073b874f2f/richvim.png)

### Installation

To install rich.vim, copy the file `syntax/rich.vim` to the `syntax`
directory in your vim folder. On Unix-like systems, it would be
something like the following:

    $ curl -o ~/.vim/syntax/rich.vim https://raw.githubusercontent.com/jocap/rich.vim/master/syntax/rich.vim

To activate rich.vim, issue `set ft=rich` inside vim.

### Supported formatting

Text is formatted using one of three _formatting marks_:

	*Bold text*
	/Italic text/
	_Underlined text_

These are concealed when the cursor moves to another line.

In order to avoid false positives, there are some limitations on what
type of characters are allowed inside and outside formatted text:

*   The first and last character must be alphanumerical:

        *123*, *abc*    (treated as formatted text)
        *()-!*, _a._    (treated as unformatted text)

*   Between the first and last character, anything goes _except_ the
    formatting mark:

    	/a *"(("= b/    (treated as formatted text)
        /a/b/, _a_b_    (treated as plain text)

*   Outside the formatting marks, only certain characters are allowed:

        *text*.         (treated as formatted text)
        *text*/         (treated as unformatted text)

    - Before: `( [ " '` (and whitespace)
    - After:  `. , ; : ? ! ) ] " '` (and whitespace)
