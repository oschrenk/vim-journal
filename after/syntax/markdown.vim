" Tasks syntax

let b:regesc = '[]()?.*@='

function! s:CreateMatch(name, regex)
  exec 'syn match ' . a:name . ' "' . a:regex . '" contained'
endfunc

call s:CreateMatch('tMarker', '^\s*' . escape(g:TasksMarkerBase, b:regesc))
call s:CreateMatch('tMarkerCancelled', '^\s*' . escape(g:TasksMarkerCancelled, b:regesc))
call s:CreateMatch('tMarkerComplete', '^\s*' . escape(g:TasksMarkerDone, b:regesc))

exec 'syn match tAttribute "' . g:TasksAttributeMarker . '\w\+\(([^)]*)\)\=" contained'
exec 'syn match tAttributeCompleted "' . g:TasksAttributeMarker . '\w\+\(([^)]*)\)\=" contained'

exec 'syn region tTaskDone start="^[\s]*.*'.g:TasksAttributeMarker.'done" end=/$/ oneline contains=tMarkerComplete,tAttributeCompleted'
exec 'syn region tTaskCancelled start="^[\s]*.*'.g:TasksAttributeMarker.'cancelled" end=/$/ oneline contains=tMarkerCancelled,tAttributeCompleted'
exec 'syn match tProject "^\s*.*' . escape(g:TasksProjectMarker, b:regesc) . '$"'
exec 'syn match tProject "^\s*.*' . escape(g:TasksScheduleMarker, b:regesc) . '$"'

hi def link tMarker Normal
hi def link tMarkerComplete Function
hi def link tMarkerCancelled Statement
hi def link tAttribute CursorLineNr
hi def link tAttributeCompleted Function
hi def link tTaskDone Comment
hi def link tTaskCancelled Comment
hi def link tProject Macro
