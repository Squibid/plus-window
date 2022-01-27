#!/bin/bash
window=$(xprop -id $(xprop -root _NET_ACTIVE_WINDOW | cut -d ' ' -f 5) WM_CLASS | tr -d '"',',')

"$(echo $window | awk '{print $3}')"
"$(echo $window | awk '{print $4}')"
