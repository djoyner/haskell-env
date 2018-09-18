let
  pkgs = import <nixpkgs> {};
  just-static = pkgs.haskell.lib.justStaticExecutables;
in
  {
    apply-refact = just-static pkgs.haskellPackages.apply-refact;
    ghcid = just-static pkgs.haskellPackages.ghcid;
    hasktags = just-static pkgs.haskellPackages.hasktags;
    hlint = just-static pkgs.haskellPackages.hlint;
    hoogle = just-static pkgs.haskellPackages.hoogle;
    stack = just-static pkgs.haskellPackages.stack;
    stylish-haskell = just-static pkgs.haskellPackages.stylish-haskell;
  }
