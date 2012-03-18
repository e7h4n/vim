" remove jslint key binding
"
if (maparg('dd', 'n') != '')
    unmap <buffer><silent> dd
endif

if (maparg('dw', 'n') != '')
    unmap <buffer><silent> dw
endif
