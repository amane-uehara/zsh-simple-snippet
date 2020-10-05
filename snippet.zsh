# @license zsh-simple-snippet
# (c) 2016-2017 auewe https://github.com/auewe
# License: MIT

typeset -Ag snippets_always
typeset -Ag snippets_begin

snippet-expand() {
  local MATCH
  local TMP_LBUFFER=${LBUFFER%%(#m)[_a-zA-Z0-9]#}
  local COMMAND;

  if [ -n "${snippets_begin[$MATCH]}" ] && [ -z "${TMP_LBUFFER}" ]; then
    COMMAND=${snippets_begin[$MATCH]}

    LBUFFER=${TMP_LBUFFER}
    LBUFFER+=${COMMAND:-$MATCH}

    if [[ "${COMMAND}" =~ "<C0>" ]]; then
      local -a TMP_ARRAY
      TMP_ARRAY=(${(s/<C0>/)LBUFFER})
      RBUFFER=${TMP_ARRAY[2]}$RBUFFER
      LBUFFER=${TMP_ARRAY[1]}
    fi

  elif [ -n "${snippets_always[$MATCH]}" ]; then
    COMMAND=${snippets_always[$MATCH]}

    LBUFFER=${TMP_LBUFFER}
    if [[ ! $LBUFFER =~ "(^|[|;]|do|then|else) *$" ]]; then
      LBUFFER+="| "
    fi
    LBUFFER+=${COMMAND:-$MATCH}

    if [[ "${COMMAND}" =~ "<C0>" ]]; then
      local -a TMP_ARRAY
      TMP_ARRAY=(${(s/<C0>/)LBUFFER})
      RBUFFER=${TMP_ARRAY[2]}$RBUFFER
      LBUFFER=${TMP_ARRAY[1]}
    fi

  else
    zle self-insert
  fi
}

snippet-next-cursor() {
  if [[ "${BUFFER}" =~ "<CS>" ]]; then
    local TMP_BUFFER=$BUFFER
    local TMP_L=${TMP_BUFFER%%<CS>[[:ascii:]]*}
    local TMP_R=${TMP_BUFFER#[[:ascii:]]*?<CS>}

    if [ "${TMP_BUFFER}" = "${TMP_L}" ]; then
      LBUFFER=${TMP_BUFFER%<CS>}
    else
      LBUFFER=${TMP_L}
    fi

    if [[ "${TMP_BUFFER}" =~ "^<CS>" ]]; then
      RBUFFER="${TMP_BUFFER#<CS>}"
    else
      RBUFFER=${TMP_R}
    fi
  fi
}

snippet-exec-after-next-cursor() {
  if [[ "${BUFFER}" =~ "<CS>" ]]; then
    zle snippet-next-cursor
  else
    zle accept-line
  fi
}


snippet-not-expand() {
  LBUFFER+=' '
}

zle -N snippet-expand
zle -N snippet-next-cursor
zle -N snippet-exec-after-next-cursor
zle -N snippet-not-expand

