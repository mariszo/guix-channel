(define-module (haskell)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system haskell)
  #:use-module (gnu packages base)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages haskell)
  #:use-module (gnu packages haskell-check)
  #:use-module (gnu packages haskell-crypto)
  #:use-module (gnu packages haskell-web)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages rsync)
  #:use-module (gnu packages version-control))

(define-public ghc-cabal-install-my
(package
  (name "ghc-cabal-install")
  (version "3.0.0.0")
  (source
    (origin
      (method url-fetch)
      (uri (string-append
             "https://hackage.haskell.org/package/cabal-install/cabal-install-"
             version
             ".tar.gz"))
      (sha256
        (base32
          "1wda29ifkn50376jidj6ihfk60a64y0bsd7lh3yw15py7a2sfcm4"))))
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
      ("ghc-network" ,ghc-network)
      ("ghc-random" ,ghc-random)
      ("ghc-tar" ,ghc-tar)
      ("ghc-zlib" ,ghc-zlib)
      ("ghc-hackage-security" ,ghc-hackage-security)
      ("ghc-resolv" ,ghc-resolv)))
  (home-page "http://www.haskell.org/cabal/")
  (synopsis
    "The command-line interface for Cabal and Hackage.")
  (description
    "The \\'cabal\\' command-line program simplifies the process of managing Haskell software by automating the fetching, configuration, compilation and installation of Haskell libraries and programs.")
  (license license:bsd-3)))
