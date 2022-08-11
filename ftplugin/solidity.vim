let b:ale_solidity_solc_options="$(forge remappings | xargs echo)"

" Fix files with prettier
let b:ale_fixers = ['prettier']
