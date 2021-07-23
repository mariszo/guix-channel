(define-public ghc-cabal-install-my
  (package
    (name "ghc-cabal-install")
    (version "3.4.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://hackage.haskell.org/package/cabal-install/cabal-install-"
               version
               ".tar.gz"))
        (sha256
          (base32
            "15rylx5pa03jdiwcg1x7zvs6aq3g6phwmi1hz26cl080nczyz00r"))))
    (build-system haskell-build-system)
    (inputs
      `(("ghc-async" ,ghc-async)
        ("ghc-base16-bytestring" ,ghc-base16-bytestring)
        ("ghc-cryptohash-sha256" ,ghc-cryptohash-sha256)
        ("ghc-echo" ,ghc-echo)
        ("ghc-edit-distance" ,ghc-edit-distance)
        ("ghc-hashable" ,ghc-hashable)
        ("ghc-http" ,ghc-http)
        ("ghc-network-uri" ,ghc-network-uri)
        ("ghc-random" ,ghc-random)
        ("ghc-tar" ,ghc-tar)
        ("ghc-zlib" ,ghc-zlib)
        ("ghc-hackage-security" ,ghc-hackage-security)
        ("ghc-regex-base" ,ghc-regex-base)
        ("ghc-regex-posix" ,ghc-regex-posix)
        ("ghc-resolv" ,ghc-resolv)
        ("ghc-lukko" ,ghc-lukko)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis
      "The command-line interface for Cabal and Hackage.")
    (description
      "The \\'cabal\\' command-line program simplifies the process of managing Haskell software by automating the fetching, configuration, compilation and installation of Haskell libraries and programs.")
    (license license:bsd-3)))
