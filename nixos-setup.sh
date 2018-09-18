#!/usr/bin/env bash

set -eo pipefail

NIX_TOOLS=(apply-refact ghcid hasktags hlint hoogle stack stylish-haskell)
STACK_RESOLVER=lts-11.22
STACK_TOOLS=(intero)

nix-env -f "<nixpkgs>" -iA ${NIX_TOOLS[@]/#/haskellPackages.}
stack --nix --resolver "${STACK_RESOLVER}" build --copy-compiler-tool ${STACK_TOOLS[*]}
