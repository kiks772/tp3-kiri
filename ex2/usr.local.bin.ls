#include <tunables/global>

/usr/local/bin/ls {
  #include <abstractions/base>

  /usr/local/bin/ls mr,

  # Allow reading most directories
  / r,
  /** r,

  # Deny reading /boot directory only
  deny /boot/ r,
  deny /boot/** r,
}
