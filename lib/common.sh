# Convenience functions reusable in any shell context

[[ -n "$LIBGITWORKSPACE_COMMON_SH" ]] && return

LIBGITWORKSPACE_COMMON_SH=1

array_append_msg() {
  local -rn _arr="$1"
  local -r _msg="${*:2}"

  _arr+=("$_msg")
}

is_in_array() {
  local -r _needle="$1"
  local -rn _haystack="$2"

  # Disable warning to rework as regex check
  # We are deliberately comparing literal strings
  # shellcheck disable=SC2076
  [[ " ${_haystack[*]} " =~ " $_needle " ]]
}
