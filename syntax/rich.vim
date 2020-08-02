setlocal conceallevel=3
setlocal linebreak

highlight Underline gui=underline
syntax match Underline /\(\(^\|[[:space:](\["']\)_\)\@<=[0-9a-zA-Z\u099-\uFFFF]\(\([^_]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\(_\($\|[[:space:].,;:?!)\]"']\)\)\@=/
syntax match UnderlineMark /\(^\|[[:space:](\["']\)\@<=_\([0-9a-zA-Z\u099-\uFFFF]\(\([^_]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?_\($\|[[:space:].,;:?!)\]"']\)\)\@=/ conceal
syntax match UnderlineMark /\(\(^\|[[:space:](\["']\)_[0-9a-zA-Z\u099-\uFFFF]\(\([^_]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\)\@<=_\(\($\|[[:space:].,;:?!)\]"']\)\)\@=/ conceal

highlight Bold gui=bold
syntax match Bold /\(\(^\|[[:space:](\["']\)\*\)\@<=[0-9a-zA-Z\u099-\uFFFF]\(\([^\*]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\(\*\($\|[[:space:].,;:?!)\]"']\)\)\@=/
syntax match BoldMark /\(^\|[[:space:](\["']\)\@<=\*\([0-9a-zA-Z\u099-\uFFFF]\(\([^\*]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\*\($\|[[:space:].,;:?!)\]"']\)\)\@=/ conceal
syntax match BoldMark /\(\(^\|[[:space:](\["']\)\*[0-9a-zA-Z\u099-\uFFFF]\(\([^\*]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\)\@<=\*\(\($\|[[:space:].,;:?!)\]"']\)\)\@=/ conceal

highlight Italic gui=italic
syntax match Italic /\(\(^\|[[:space:](\["']\)\/\)\@<=[0-9a-zA-Z\u099-\uFFFF]\(\([^\/]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\(\/\($\|[[:space:].,;:?!)\]"']\)\)\@=/
syntax match ItalicMark /\(^\|[[:space:](\["']\)\@<=\/\([0-9a-zA-Z\u099-\uFFFF]\(\([^\/]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\/\($\|[[:space:].,;:?!)\]"']\)\)\@=/ conceal
syntax match ItalicMark /\(\(^\|[[:space:](\["']\)\/[0-9a-zA-Z\u099-\uFFFF]\(\([^\/]*\)\?[0-9a-zA-Z\u099-\uFFFF]\)\?\)\@<=\/\(\($\|[[:space:].,;:?!)\]"']\)\)\@=/ conceal
