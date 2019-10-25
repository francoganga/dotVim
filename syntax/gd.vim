"Vim syntax file
"Languaje: Gd script
"

if exists("b:current_syntax")
    finish
endif

syn keyword basicLanguageKeywords if elif else for while match break
syn keyword basicLanguageKeywords continue pass return  is as
syn keyword basicLanguageKeywords self tool signal func static const enum
syn keyword basicLanguageKeywords export setget breakpoint preload yield
syn keyword basicLanguageKeywords assert remote master puppet remotesync mastersync puppetsync
syn keyword basicLanguageKeywords PI TAU INF NAN
syn keyword gdTypes Vector2 Vector3 Rect2 Tranform2D Plane Transform Object

syn keyword inc extends class onready class_name
syn keyword t var
syn match gdComment "#.*$"
syn match extraWhiteSpace /\s\+$/

hi def link basicLanguageKeywords Statement
hi def link inc PreProc
hi def link t Type
hi def link gdComment Comment 
hi def link extraWhiteSpace SpellCap
hi def link gdTypes Type

