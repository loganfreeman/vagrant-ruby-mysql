package { 'vim-enhanced':
  ensure        => present,
  allow_virtual => false,
}
package { 'tree':
  ensure        => present,
  allow_virtual => false,
}
package { 'lsof':
  ensure        => present,
  allow_virtual => false,
}
