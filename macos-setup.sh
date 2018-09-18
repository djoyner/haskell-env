#!/usr/bin/env bash

nix-env -f macos-setup.nix -iA apply-refact ghcid hasktags hlint hoogle stack stylish-haskell
