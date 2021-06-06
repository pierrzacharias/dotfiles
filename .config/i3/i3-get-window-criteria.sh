#!/usr/bin/env sh

match_int='[0-9][0-9]*'
match_string='".*"'
match_qstring='"[^"\\]*(\\.[^"\\]*)*"' # NOTE: Adds 1 backreference

{ xprop |
    sed -nr \
    -e "s/^WM_CLASS\(STRING\) = ($match_qstring), ($match_qstring)$/instance=\1\nclass=\3/p" \
    -e "s/^WM_WINDOW_ROLE\(STRING\) = ($match_qstring)$/window_role=\1/p" \

    -e "/^WM_NAME\(STRING\) = ($match_string)$/{s//title=\1/; h}" \
    -e "/^_NET_WM_NAME\(UTF8_STRING\) = ($match_qstring)$/{s//title=\1/; h}" \
    -e '${g; p}'
} | sort | tr "\n" " " | sed -r 's/^(.*) $/[\1]\n/'
