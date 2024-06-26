require('lint').linters_by_ft = {
  markdown = {'vale',},
  python = {'flake8'},
  lua = {'luacheck'},
  java = {'checkstyle'},
  haskell = {'hlint'},
  c = {'clangtidy'},
  rust = {'clippy'}
}
