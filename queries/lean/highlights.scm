(open
  namespace: (identifier) @namespace)
(namespace
  name: (identifier) @namespace)
(section
  name: (identifier) @namespace)

; Variables
(identifier) @variable

;; Identifier naming conventions
((identifier) @type
 (#match? @type "^[A-Z]"))

(arrow) @type
(product) @type

;; Declarations

[
  "abbrev"
  "def"
  "theorem"
  "constant"
  "instance"
  "axiom"
  "example"
  "inductive"
  "structure"
  "class"

  "deriving"

  "section"
  "namespace"
] @keyword

(attributes
  (identifier) @function)

(abbrev
  name: (identifier) @type)
(def
  name: (identifier) @function)
(theorem
  name: (identifier) @function)
(constant
  name: (identifier) @type)
(instance
  name: (identifier) @function)
(instance
  type: (identifier) @type)
(axiom
  name: (identifier) @function)
(structure
  name: (identifier) @type)
(structure
  extends: (identifier) @type)

(where_decl
  type: (identifier) @type)

(proj
  name: (identifier) @field)

(binders
  type: (identifier) @type)

["if" "then" "else"] @conditional

["for" "in" "do"] @repeat

(import) @include

; Tokens

[
  "!"
  "$"
  "%"
  "&&"
  "*"
  "*>"
  "+"
  "++"
  "-"
  "/"
  "::"
  ":="
  "<"
  "<$>"
  "<*"
  "<*>"
  "<="
  "<|"
  "<|>"
  "="
  "=="
  "=>"
  ">"
  ">"
  ">="
  ">>"
  ">>="
  "@"
  "^"
  "|>"
  "|>."
  "||"
  "←"
  "→"
  "↔"
  "∘"
  "∧"
  "∨"
  "≠"
  "≤"
  "≥"
] @operator

[
  "@&"
] @operator

[
  "attribute"
  "by"
  "end"
  "export"
  "extends"
  "fun"
  "let"
  "have"
  "match"
  "open"
  "return"
  "universe"
  "variable"
  "where"
  "with"
  "λ"
  (hash_command)
  (prelude)
  (sorry)
] @keyword

[
  "prefix"
  "infix"
  "infixl"
  "infixr"
  "postfix"
  "notation"
  "macro"
  "macro_rules"
  "syntax"
  "elab"
  "builtin_initialize"
] @keyword

[
  "noncomputable"
  "partial"
  "private"
  "protected"
  "unsafe"
] @keyword

[
  "apply"
  "exact"
  "rewrite"
  "rw"
  "simp"
  (trivial)
] @keyword

[
  "catch"
  "finally"
  "try"
] @exception

((apply
  name: (identifier) @exception)
 (#match? @exception "throw"))

[
  "unless"
  "mut"
] @keyword

[(true) (false)] @boolean

(number) @number
(float) @float

(comment) @comment
(char) @character
(string) @string
(interpolated_string) @string
(quoted_char) @string.escape

; Reset highlighing in string interpolation
(interpolation) @none

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special)

["(" ")" "[" "]" "{" "}" "⟨" "⟩"] @punctuation.bracket

["|" "," "." ":" ";"] @punctuation.delimiter

(sorry) @error

;; Error
(ERROR) @error
