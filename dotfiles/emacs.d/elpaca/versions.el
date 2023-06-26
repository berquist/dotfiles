((elpaca :source
   "lockfile" :date (25752 55701 127417 396000) :recipe
   (:protocol https :inherit t :depth 1 :repo
              "https://github.com/progfolio/elpaca.git" :ref
              "1392caa3774293baa7379f2d817b76dda001812f" :files
              (:defaults (:exclude "extensions")) :build
              (:not elpaca--activate-package) :package "elpaca"))
 (elpaca-use-package :source "lockfile" :date (25752 55701 125368 130000)
                     :recipe
                     (:package "elpaca-use-package" :repo
                               "https://github.com/progfolio/elpaca.git"
                               :files ("extensions/elpaca-use-package.el")
                               :main "extensions/elpaca-use-package.el" :build
                               (:not elpaca--compile-info) :protocol https
                               :inherit t :depth 1 :ref
                               "1392caa3774293baa7379f2d817b76dda001812f"))
 (no-littering :source "lockfile" :date (25752 55701 123521 306000) :recipe
               (:package "no-littering" :fetcher github :repo
                         "emacscollective/no-littering" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "cc56893faaf769226ceae8836a426da583fab992"))
 (dash :source "lockfile" :date (25752 55701 121376 911000) :recipe
       (:package "dash" :fetcher github :repo "magnars/dash.el" :files
                 ("dash.el" "dash.texi") :protocol https :inherit t :depth 1
                 :ref "d5182da04ca54c026ea0bf381f2c1642a30e2686"))
 (delight :source "lockfile" :date (25752 55701 119406 183000) :recipe
          (:package "delight" :host github :files ("*" (:exclude ".git"))
                    :repo "emacs-straight/delight" :protocol https :inherit t
                    :depth 1 :ref "70cb8cec9e5eb2c24364e065d85c2ea8f14a587c"))
 (exec-path-from-shell :source "lockfile" :date (25752 55701 117384 158000)
                       :recipe
                       (:package "exec-path-from-shell" :fetcher github :repo
                                 "purcell/exec-path-from-shell" :files
                                 ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                                  "*.texinfo" "doc/dir" "doc/*.info"
                                  "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                                  (:exclude ".dir-locals.el" "test.el"
                                            "tests.el" "*-test.el"
                                            "*-tests.el" "LICENSE" "README*"
                                            "*-pkg.el"))
                                 :protocol https :inherit t :depth 1 :ref
                                 "ddd24dc823de9a94435b4d8ea7569161657f31e2"))
 (compat :source "lockfile" :date (25752 55701 115384 826000) :recipe
         (:package "compat" :host github :files ("*" (:exclude ".git")) :repo
                   "emacs-straight/compat" :protocol https :inherit t :depth 1
                   :ref "e07c0f29d45a73cc0bdf9423780979978c1d9d22"))
 (which-key :source "lockfile" :date (25752 55701 113387 208000) :recipe
            (:package "which-key" :repo "justbur/emacs-which-key" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "ee6f0637f75ded903653b7a300a8588e3a8427f7"))
 (helpful :source "lockfile" :date (25752 55701 111480 310000) :recipe
          (:package "helpful" :repo "Wilfred/helpful" :fetcher github :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "32cb28b50b3366ad35e2cb936367268ddeec745f"))
 (yasnippet :source "lockfile" :date (25752 55701 109986 232000) :recipe
            (:package "yasnippet" :repo "joaotavora/yasnippet" :fetcher github
                      :files ("yasnippet.el" "snippets") :protocol https
                      :inherit t :depth 1 :ref
                      "5cbdbf0d2015540c59ed8ee0fcf4788effdf75b6"))
 (yasnippet-snippets :source "lockfile" :date (25752 55701 107763 28000)
                     :recipe
                     (:package "yasnippet-snippets" :repo
                               "AndreaCrotti/yasnippet-snippets" :fetcher
                               github :files ("*.el" "snippets" ".nosearch")
                               :protocol https :inherit t :depth 1 :ref
                               "bec49fa129ae8c0104ba150f9b8352a39c54dbd6"))
 (abyss-theme :source "lockfile" :date (25752 55701 106147 480000) :recipe
              (:package "abyss-theme" :fetcher github :repo
                        "mgrbyte/emacs-abyss-theme" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "18791c6e8d9cc2b4815c9f08627a2e94fc0eeb14"))
 (base16-theme :source "lockfile" :date (25752 55701 104175 239000) :recipe
               (:package "base16-theme" :repo "tinted-theming/base16-emacs"
                         :fetcher github :files (:defaults "build/*.el")
                         :protocol https :inherit t :depth 1 :ref
                         "111de0722f13e15f406806e43ae1dbc97251912c"))
 (base16-eva-theme :source "lockfile" :date (25752 55701 102112 638000)
                   :recipe
                   (:protocol https :inherit t :depth 1 :host github :repo
                              "kjakapat/eva-theme" :files ("emacs/build/*.el")
                              :package "base16-eva-theme" :ref
                              "273cdeeb1c520b9ecb8ce3ab627015b26264972b"))
 (colonoscopy-theme :source "lockfile" :date (25752 55701 99572 396000)
                    :recipe
                    (:package "colonoscopy-theme" :fetcher github :repo
                              "emacsfodder/emacs-colonoscopy-theme" :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                               "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                               "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el"
                                         "*-test.el" "*-tests.el" "LICENSE"
                                         "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref
                              "64bbb322b13dae91ce9f1e3581f836f94f800ead"))
 (dracula-theme :source "lockfile" :date (25752 55701 97108 367000) :recipe
                (:package "dracula-theme" :fetcher github :repo
                          "dracula/emacs" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "54c26402555ab5b8b7cfd8ee2488c57b2fa5d32a"))
 (ef-themes :source "lockfile" :date (25752 55701 95170 872000) :recipe
            (:package "ef-themes" :host github :files ("*" (:exclude ".git"))
                      :repo "emacs-straight/ef-themes" :protocol https
                      :inherit t :depth 1 :ref
                      "64c907d23025652af399e5b33f5ba654d00c7885"))
 (gotham-theme :source "lockfile" :date (25752 55701 93331 983000) :recipe
               (:package "gotham-theme" :fetcher git :url
                         "https://depp.brause.cc/gotham-theme.git" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "4b8214df0851bb69b44c3e864568b7e0030a95d2"))
 (plan9-theme :source "lockfile" :date (25752 55701 90814 623000) :recipe
              (:package "plan9-theme" :fetcher github :repo
                        "john2x/plan9-theme.el" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "c2da2fcb241e9800d931a1ff19ecd9fd84d30382"))
 (punpun-themes :source "lockfile" :date (25752 55701 88765 137000) :recipe
                (:package "punpun-themes" :fetcher git :url
                          "https://depp.brause.cc/punpun-themes.git"
                          :old-names (punpun-theme) :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "6a7e04de1ad9f7ba9074b7206bffc9241c33349c"))
 (rebecca-theme :source "lockfile" :date (25752 55701 86699 310000) :recipe
                (:package "rebecca-theme" :fetcher github :repo
                          "vic/rebecca-theme" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "4b8b5aae9099185e07c2b4cac4943c7f66a3f003"))
 (spacegray-theme :source "lockfile" :date (25752 55701 84446 249000) :recipe
                  (:package "spacegray-theme" :fetcher github :repo
                            "bruce/emacs-spacegray-theme" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                             "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el"
                                       "*-test.el" "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref
                            "9826265c2bceb2ebc1c5e16a45021da0253ace97"))
 (tron-legacy-theme :source "lockfile" :date (25752 55701 82461 525000)
                    :recipe
                    (:package "tron-legacy-theme" :fetcher github :repo
                              "ianyepan/tron-legacy-emacs-theme" :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                               "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                               "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el"
                                         "*-test.el" "*-tests.el" "LICENSE"
                                         "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref
                              "c707baf08516f69a88ca2f494a9556ac6d1986f4"))
 (rainbow-mode :source "lockfile" :date (25752 55701 80022 43000) :recipe
               (:package "rainbow-mode" :host github :files
                         ("*" (:exclude ".git")) :repo
                         "emacs-straight/rainbow-mode" :protocol https
                         :inherit t :depth 1 :ref
                         "8e96388fb4d616a9dde23e712bad0d9cd048fbf0"))
 (default-text-scale :source "lockfile" :date (25752 55701 77953 370000)
                     :recipe
                     (:package "default-text-scale" :fetcher github :repo
                               "purcell/default-text-scale" :files
                               ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                                "*.texinfo" "doc/dir" "doc/*.info"
                                "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                                (:exclude ".dir-locals.el" "test.el"
                                          "tests.el" "*-test.el" "*-tests.el"
                                          "LICENSE" "README*" "*-pkg.el"))
                               :protocol https :inherit t :depth 1 :ref
                               "bfc0987c37e93742255d3b23d86c17096fda8e7e"))
 (dtrt-indent :source "lockfile" :date (25752 55701 75616 171000) :recipe
              (:package "dtrt-indent" :fetcher github :repo
                        "jscheid/dtrt-indent" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "8b13cad77dbce79db24a08a9ab6fa230b6b74bc9"))
 (unfill :source "lockfile" :date (25752 55701 73194 923000) :recipe
         (:package "unfill" :fetcher github :repo "purcell/unfill" :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                    "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                    "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE" "README*"
                              "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref
                   "075052ce0b4451d7d3ede013ce5a77e6a7a92360"))
 (vertico :source "lockfile" :date (25752 55701 70213 168000) :recipe
          (:package "vertico" :host github :files ("*" (:exclude ".git"))
                    :repo "emacs-straight/vertico" :protocol https :inherit t
                    :depth 1 :ref "17d7cf79888114c1cbea89cd8e58a3bba986f369"))
 (orderless :source "lockfile" :date (25752 55701 68172 869000) :recipe
            (:package "orderless" :repo "oantolin/orderless" :fetcher github
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "e6784026717a8a6a7dcd0bf31fd3414f148c542e"))
 (marginalia :source "lockfile" :date (25752 55701 66024 306000) :recipe
             (:package "marginalia" :repo "minad/marginalia" :fetcher github
                       :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "ae454a2aa0c5d85b5e151938b310e7d16538157d"))
 (ctrlf :source "lockfile" :date (25752 55701 64036 756000) :recipe
        (:package "ctrlf" :fetcher github :repo "radian-software/ctrlf" :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                   "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                   "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                             "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref
                  "9b4cf6c79a961f2bfbb949805aa300fcf1eb40a6"))
 (ripgrep :source "lockfile" :date (25752 55701 61854 419000) :recipe
          (:package "ripgrep" :repo "nlamirault/ripgrep.el" :fetcher github
                    :files ("ripgrep.el") :protocol https :inherit t :depth 1
                    :ref "b6bd5beb0c11348f1afd9486cbb451d0d2e3c45a"))
 (rg :source "lockfile" :date (25752 55701 59325 428000) :recipe
     (:package "rg" :fetcher github :repo "dajva/rg.el" :files
               ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir"
                "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                          "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
               :protocol https :inherit t :depth 1 :ref
               "e9dc4ed342e0212d08fb82554dfd3c57fdfa5b1a"))
 (deadgrep :source "lockfile" :date (25752 55701 57703 218000) :recipe
           (:package "deadgrep" :repo "Wilfred/deadgrep" :fetcher github
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "139e967e1f646d557996e012c2855648a180cc9d"))
 (projectile :source "lockfile" :date (25752 55701 55769 920000) :recipe
             (:package "projectile" :fetcher github :repo "bbatsov/projectile"
                       :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "31b87151b1fe43221736ded957a1123a54e32531"))
 (direnv :source "lockfile" :date (25752 55701 53156 931000) :recipe
         (:package "direnv" :fetcher github :repo "wbolster/emacs-direnv"
                   :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                    "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                    "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE" "README*"
                              "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref
                   "268536f564b7eba99264a89a9149268eb4bc67ac"))
 (dotenv-mode :source "lockfile" :date (25752 55701 50714 954000) :recipe
              (:package "dotenv-mode" :repo "preetpalS/emacs-dotenv-mode"
                        :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "e3701bf739bde44f6484eb7753deadaf691b73fb"))
 (vagrant-tramp :source "lockfile" :date (25752 55701 48419 664000) :recipe
                (:package "vagrant-tramp" :fetcher github :repo
                          "dougm/vagrant-tramp" :files ("*.el" "bin")
                          :protocol https :inherit t :depth 1 :ref
                          "2b7a4fabd328961384da06e0e302250cd97edc47"))
 (langtool :source "lockfile" :date (25752 55701 45669 956000) :recipe
           (:package "langtool" :fetcher github :repo
                     "mhayashi1120/Emacs-langtool" :files ("langtool.el")
                     :protocol https :inherit t :depth 1 :ref
                     "d86101eafe9a994eb0425e08e7c1795e9cb0cd42"))
 (company :source "lockfile" :date (25752 55701 42602 249000) :recipe
          (:package "company" :fetcher github :repo
                    "company-mode/company-mode" :files
                    (:defaults "icons"
                               ("images/small" "doc/images/small/*.png"))
                    :protocol https :inherit t :depth 1 :ref
                    "8a78f320019574bc35b5727f95b052b27918da20"))
 (lsp-mode :source "lockfile" :date (25752 55701 39969 362000) :recipe
           (:package "lsp-mode" :repo "emacs-lsp/lsp-mode" :fetcher github
                     :files (:defaults "clients/*.el") :protocol https
                     :inherit t :depth 1 :ref
                     "ba50b9d3f608a518cd1c7207bc245c0b9a730b53"))
 (realgud :source "lockfile" :date (25752 55701 38179 165000) :recipe
          (:package "realgud" :fetcher github :repo "realgud/realgud" :files
                    ("realgud.el" "realgud/.nosearch"
                     "realgud-recursive-autoloads.el"
                     ("realgud/common" "realgud/common/*.el")
                     ("realgud/common/buffer" "realgud/common/buffer/*.el")
                     ("realgud/debugger/bashdb" "realgud/debugger/bashdb/*.el")
                     ("realgud/debugger/gdb" "realgud/debugger/gdb/*.el")
                     ("realgud/debugger/gub" "realgud/debugger/gub/*.el")
                     ("realgud/debugger/ipdb" "realgud/debugger/ipdb/*.el")
                     ("realgud/debugger/jdb" "realgud/debugger/jdb/*.el")
                     ("realgud/debugger/kshdb" "realgud/debugger/kshdb/*.el")
                     ("realgud/debugger/nodejs" "realgud/debugger/nodejs/*.el")
                     ("realgud/debugger/pdb" "realgud/debugger/pdb/*.el")
                     ("realgud/debugger/perldb" "realgud/debugger/perldb/*.el")
                     ("realgud/debugger/rdebug" "realgud/debugger/rdebug/*.el")
                     ("realgud/debugger/remake" "realgud/debugger/remake/*.el")
                     ("realgud/debugger/trepan" "realgud/debugger/trepan/*.el")
                     ("realgud/debugger/trepan.pl"
                      "realgud/debugger/trepan.pl/*.el")
                     ("realgud/debugger/trepan2"
                      "realgud/debugger/trepan2/*.el")
                     ("realgud/debugger/trepan3k"
                      "realgud/debugger/trepan3k/*.el")
                     ("realgud/debugger/trepanjs"
                      "realgud/debugger/trepanjs/*.el")
                     ("realgud/debugger/zshdb" "realgud/debugger/zshdb/*.el")
                     ("realgud/lang" "realgud/lang/*.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "2c77776a4797805d8633636fd68148dfb32fab65"))
 (realgud-ipdb :source "lockfile" :date (25752 55701 36302 675000) :recipe
               (:package "realgud-ipdb" :fetcher github :repo
                         "realgud/realgud-ipdb" :files
                         (:defaults ("ipdb" "ipdb/*.el")) :protocol https
                         :inherit t :depth 1 :ref
                         "acc9e550883906cb608fdd0aba67f2a33f997e01"))
 (flycheck :source "lockfile" :date (25752 55701 33057 302000) :recipe
           (:package "flycheck" :repo "flycheck/flycheck" :fetcher github
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "5f2ef177cb21ae8b73714575802beef04abd0f5e"))
 (vdiff :source "lockfile" :date (25752 55701 30893 470000) :recipe
        (:package "vdiff" :repo "justbur/emacs-vdiff" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                   "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                   "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                             "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref
                  "170e968c6a46a572b30c52c1b038232d418734cc"))
 (git-commit :source "lockfile" :date (25752 55701 28334 2000) :recipe
             (:package "git-commit" :fetcher github :repo "magit/magit" :files
                       ("lisp/git-commit.el" "lisp/git-commit-pkg.el")
                       :old-names (git-commit-mode) :protocol https :inherit t
                       :depth 1 :ref
                       "24f64fd4f8ed4a4a302fd9227febad63507d7287"))
 (git-modes :source "lockfile" :date (25752 55701 26129 372000) :recipe
            (:package "git-modes" :fetcher github :repo "magit/git-modes"
                      :old-names
                      (gitattributes-mode gitconfig-mode gitignore-mode)
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "44d536ba637235c9dd203410281397417a3e60b6"))
 (magit :source "lockfile" :date (25752 55701 24107 788000) :recipe
        (:package "magit" :fetcher github :repo "magit/magit" :files
                  ("lisp/magit*.el" "lisp/git-rebase.el" "docs/magit.texi"
                   "docs/AUTHORS.md" "LICENSE" "Documentation/magit.texi"
                   "Documentation/AUTHORS.md"
                   (:exclude "lisp/magit-libgit.el" "lisp/magit-libgit-pkg.el"
                             "lisp/magit-section.el"
                             "lisp/magit-section-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref
                  "24f64fd4f8ed4a4a302fd9227febad63507d7287"))
 (git-timemachine :source "lockfile" :date (25752 55701 21596 30000) :recipe
                  (:package "git-timemachine" :fetcher codeberg :repo
                            "pidu/git-timemachine" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                             "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el"
                                       "*-test.el" "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref
                            "bc8c7d7c22aeeced2510023b2e6c5d8ce8c574aa"))
 (pandoc-mode :source "lockfile" :date (25752 55701 19341 727000) :recipe
              (:package "pandoc-mode" :fetcher github :repo
                        "joostkremers/pandoc-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "da3f0f5238a8b1e5f09f2ec97e683dc488d25be0"))
 (htmlize :source "lockfile" :date (25752 55701 17215 135000) :recipe
          (:package "htmlize" :fetcher github :repo "hniksic/emacs-htmlize"
                    :version-regexp "release/\\(.*\\)" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "dd27bc3f26efd728f2b1f01f9e4ac4f61f2ffbf9"))
 (ox-gfm :source "lockfile" :date (25752 55701 15125 373000) :recipe
         (:package "ox-gfm" :fetcher github :repo "larstvei/ox-gfm" :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                    "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                    "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE" "README*"
                              "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref
                   "46faa67dbb3fb0cd7a76c3fe518f16e4195c22c7"))
 (ox-pandoc :source "lockfile" :date (25752 55701 13126 512000) :recipe
            (:package "ox-pandoc" :repo "emacsorphanage/ox-pandoc" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "66c32cca4f6047dd7e0f77f10bd565a2d83d4729"))
 (ox-trac :source "lockfile" :date (25752 55701 11326 586000) :recipe
          (:package "ox-trac" :fetcher github :repo "JalapenoGremlin/ox-trac"
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "03cc31efb1aa06991918f1071e250a9d58f96cfb"))
 (eval-in-repl :source "lockfile" :date (25752 55701 8778 920000) :recipe
               (:package "eval-in-repl" :fetcher github :repo
                         "kaz-yos/eval-in-repl" :commit "origin/master" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "2abb9ccf6f08ae3a5ab504f0b3fd81ce0345b766"))
 (clang-format+ :source "lockfile" :date (25752 55701 6612 753000) :recipe
                (:package "clang-format+" :repo
                          "SavchenkoValeriy/emacs-clang-format-plus" :fetcher
                          github :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "ddd4bfe1a13c2fd494ce339a320a51124c1d2f68"))
 (astyle :source "lockfile" :date (25752 55701 4861 299000) :recipe
         (:package "astyle" :repo "storvik/emacs-astyle" :fetcher github
                   :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                    "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                    "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE" "README*"
                              "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref
                   "04ff2941f08c4b731fe6a18ee1697436d1ca1cc0"))
 (auctex :source "lockfile" :date (25752 55701 3070 942000) :recipe
         (:package "auctex" :host github :files ("*" (:exclude ".git")) :repo
                   "emacs-straight/auctex" :protocol https :inherit t :depth 1
                   :ref "f60d3b907618c2cbb527e59e29821465d6750993"))
 (python-docstring :source "lockfile" :date (25752 55701 803 855000) :recipe
                   (:package "python-docstring" :fetcher github :repo
                             "glyph/python-docstring-mode" :files
                             ("docstring_wrap.py" "python-docstring.el")
                             :protocol https :inherit t :depth 1 :ref
                             "40f0ca57831a71a9e6437088149784f37704ef6c"))
 (numpydoc :source "lockfile" :date (25752 55700 998204 290000) :recipe
           (:package "numpydoc" :fetcher github :repo
                     "douglasdavis/numpydoc.el" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "935e6cb27ef278275dcf64dc603b58164848ab22"))
 (virtualenvwrapper :source "lockfile" :date (25752 55700 996172 56000)
                    :recipe
                    (:package "virtualenvwrapper" :fetcher github :repo
                              "porterjamesj/virtualenvwrapper.el" :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                               "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                               "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el"
                                         "*-test.el" "*-tests.el" "LICENSE"
                                         "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref
                              "c7e84505db4142fd1beebf38ffe37c3f42444ca3"))
 (conda :source "lockfile" :date (25752 55700 994126 418000) :recipe
        (:package "conda" :repo "necaris/conda.el" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                   "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                   "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                             "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref
                  "6a6a27dad7ab696b41b54a1cb7591ca489133fec"))
 (pyenv-mode :source "lockfile" :date (25752 55700 991421 424000) :recipe
             (:package "pyenv-mode" :fetcher github :repo
                       "pythonic-emacs/pyenv-mode" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "b818901b8eac0e260ced66a6a5acabdbf6f5ba99"))
 (lsp-pyright :source "lockfile" :date (25752 55700 988554 355000) :recipe
              (:package "lsp-pyright" :repo "emacs-lsp/lsp-pyright" :fetcher
                        github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "54a2acddfdd7c3d31cb804a042305a3c6e60cf81"))
 (blacken :source "lockfile" :date (25752 55700 986375 826000) :recipe
          (:package "blacken" :fetcher github :repo "pythonic-emacs/blacken"
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "1e80b970b130d5c33031f2539c89eb2f13da2572"))
 (python-isort :source "lockfile" :date (25752 55700 984398 44000) :recipe
               (:package "python-isort" :fetcher github :repo
                         "wyuenho/emacs-python-isort" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "8b4948b7fcad90fc9b72f69f4653260bd21f62c3"))
 (cython-mode :source "lockfile" :date (25752 55700 982529 179000) :recipe
              (:package "cython-mode" :fetcher github :repo
                        "cython/emacs-cython-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "3e4790559d3168fe992cf2aa62f01423038cedb5"))
 (flycheck-cython :source "lockfile" :date (25752 55700 980034 823000) :recipe
                  (:package "flycheck-cython" :fetcher github :repo
                            "lbolla/emacs-flycheck-cython" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                             "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el"
                                       "*-test.el" "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref
                            "ecc4454d35ab5317ab66a04406f36f0c1dbc0b76"))
 (pip-requirements :source "lockfile" :date (25752 55700 978125 381000)
                   :recipe
                   (:package "pip-requirements" :repo
                             "Wilfred/pip-requirements.el" :fetcher github
                             :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                              "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                              "doc/*.texinfo" "lisp/*.el"
                              (:exclude ".dir-locals.el" "test.el" "tests.el"
                                        "*-test.el" "*-tests.el" "LICENSE"
                                        "README*" "*-pkg.el"))
                             :protocol https :inherit t :depth 1 :ref
                             "216cd1690f80cc965d4ae47b8753fc185f778ff6"))
 (markdown-mode :source "lockfile" :date (25752 55700 976112 814000) :recipe
                (:package "markdown-mode" :fetcher github :repo
                          "jrblevin/markdown-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "f3ee31ffc28b3d8e86da2208c87eac75fd6e6eae"))
 (deft :source "lockfile" :date (25752 55700 973204 66000) :recipe
       (:package "deft" :repo "jrblevin/deft" :fetcher github :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                            "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                 :protocol https :inherit t :depth 1 :ref
                 "28be94d89bff2e1c7edef7244d7c5ba0636b1296"))
 (cmake-mode :source "lockfile" :date (25752 55700 971162 545000) :recipe
             (:package "cmake-mode" :fetcher git :url
                       "https://gitlab.kitware.com/cmake/cmake.git" :files
                       ("Auxiliary/*.el") :protocol https :inherit t :depth 1
                       :ref "7e38674e063cc7b5c3cff0748d6968a8f60907dc"))
 (editorconfig :source "lockfile" :date (25752 55700 968876 122000) :recipe
               (:package "editorconfig" :fetcher github :repo
                         "editorconfig/editorconfig-emacs" :old-names
                         (editorconfig-core editorconfig-fnmatch) :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "d4111f65c68f18f0dfb3072ee0d9b1d4cee80b52"))
 (julia-mode :source "lockfile" :date (25752 55700 966456 807000) :recipe
             (:package "julia-mode" :repo "JuliaEditorSupport/julia-emacs"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "c798df5a4e515b759764468f728f655899ab2196"))
 (vterm :source "lockfile" :date (25752 55700 964476 431000) :recipe
        (:package "vterm" :fetcher github :repo "akermu/emacs-libvterm" :files
                  ("CMakeLists.txt" "elisp.c" "elisp.h" "emacs-module.h" "etc"
                   "utf8.c" "utf8.h" "vterm.el" "vterm-module.c"
                   "vterm-module.h")
                  :protocol https :inherit t :depth 1 :ref
                  "94e2b0b2b4a750e7907dacd5b4c0584900846dd1"))
 (julia-repl :source "lockfile" :date (25752 55700 961617 819000) :recipe
             (:package "julia-repl" :fetcher github :repo "tpapp/julia-repl"
                       :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "9503ef7110732e444e686e815c5b2ae8228d274d"))
 (lsp-julia :source "lockfile" :date (25752 55700 959717 33000) :recipe
            (:package "lsp-julia" :fetcher github :repo "gdkrmr/lsp-julia"
                      :files (:defaults "languageserver") :protocol https
                      :inherit t :depth 1 :ref
                      "c584f79c7fee6176bbb6120f4cb0f1001bcf8113"))
 (yaml-mode :source "lockfile" :date (25752 55700 957307 817000) :recipe
            (:package "yaml-mode" :repo "yoshiki/yaml-mode" :fetcher github
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "b153150e0e77b4ec462d741cdb16956c6ae270d6"))
 (jsonian :source "lockfile" :date (25752 55700 955193 368000) :recipe
          (:package "jsonian" :fetcher github :repo "iwahbe/jsonian" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "3a1d99cd089884a92158cf396e8edc69177f908b"))
 (jq-format :source "lockfile" :date (25752 55700 952849 907000) :recipe
            (:package "jq-format" :fetcher github :repo
                      "wbolster/emacs-jq-format" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "47e1c5adb89b37b4d53fe01302d8c675913c20e7"))
 (cue-mode :source "lockfile" :date (25752 55700 951118 551000) :recipe
           (:package "cue-mode" :fetcher github :repo "russell/cue-mode"
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "a87ba6748a7a1bebe4431ee8e54e414f0c905141"))
 (dhall-mode :source "lockfile" :date (25752 55700 948804 205000) :recipe
             (:package "dhall-mode" :repo "psibi/dhall-mode" :fetcher github
                       :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "87ab69fe765d87b3bb1604a306a8c44d6887681d"))
 (nickel-mode :source "lockfile" :date (25752 55700 947166 125000) :recipe
              (:package "nickel-mode" :repo "nickel-lang/nickel-mode" :fetcher
                        github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "4b92668564025b18a3d4da47db51d6360cf9da44"))
 (web-mode :source "lockfile" :date (25752 55700 944857 890000) :recipe
           (:package "web-mode" :repo "fxbois/web-mode" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "57856ba64b9382811b35df0d9ab0a24aede0c1f0"))
 (jinja2-mode :source "lockfile" :date (25752 55700 942869 439000) :recipe
              (:package "jinja2-mode" :fetcher github :repo
                        "paradoxxxzero/jinja2-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "03e5430a7efe1d163a16beaf3c82c5fd2c2caee1"))
 (rustic :source "lockfile" :date (25752 55700 940793 442000) :recipe
         (:package "rustic" :repo "brotzeit/rustic" :fetcher github :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                    "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                    "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE" "README*"
                              "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref
                   "39423d1cf4fa054c36bf9577356451f4c06ee148"))
 (paredit :source "lockfile" :date (25752 55700 938583 423000) :recipe
          (:package "paredit" :fetcher git :url
                    "https://mumble.net/~campbell/git/paredit.git" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "9a2c4b37fc8c1c7bdbb1f86fdec874c0d0652e64"))
 (cask-mode :source "lockfile" :date (25752 55700 936297 240000) :recipe
            (:package "cask-mode" :repo "Wilfred/cask-mode" :fetcher github
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "be8b69e55916cf2e78886927f58c7c49b969c0b8"))
 (flycheck-package :source "lockfile" :date (25752 55700 933420 774000)
                   :recipe
                   (:package "flycheck-package" :fetcher github :repo
                             "purcell/flycheck-package" :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                              "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                              "doc/*.texinfo" "lisp/*.el"
                              (:exclude ".dir-locals.el" "test.el" "tests.el"
                                        "*-test.el" "*-tests.el" "LICENSE"
                                        "README*" "*-pkg.el"))
                             :protocol https :inherit t :depth 1 :ref
                             "3a6aaed29ff61418c48c0251e1432c30748ae739"))
 (sly :source "lockfile" :date (25752 55700 931322 906000) :recipe
      (:package "sly" :repo "joaotavora/sly" :fetcher github :files
                (:defaults "lib" "slynk" "contrib" "doc/images"
                           (:exclude "sly-autoloads.el"))
                :protocol https :inherit t :depth 1 :ref
                "df62abae73bd511885c9c7ec0ea7ea1469a00923"))
 (clojure-mode :source "lockfile" :date (25752 55700 929322 852000) :recipe
               (:package "clojure-mode" :repo "clojure-emacs/clojure-mode"
                         :fetcher github :files ("clojure-mode.el") :protocol
                         https :inherit t :depth 1 :ref
                         "f5b85cac392a3a0ea844e7461ca53a8b2d903afb"))
 (cider :source "lockfile" :date (25752 55700 926837 815000) :recipe
        (:package "cider" :fetcher github :repo "clojure-emacs/cider" :files
                  ("*.el" (:exclude ".dir-locals.el")) :old-names (nrepl)
                  :protocol https :inherit t :depth 1 :ref
                  "1367b25eb38b74bd9f87c763d5631d602b7161ae"))
 (ttl-mode :source "lockfile" :date (25752 55700 925076 41000) :recipe
           (:package "ttl-mode" :fetcher github :repo "jeeger/ttl-mode" :files
                     ("ttl-mode.el.in") :protocol https :inherit t :depth 1
                     :type git :flavor melpa :host github :ref
                     "04b86536e0363a78c11ca10ac83096b28fc5fbf0"))
 (flycheck-nimsuggest :source "lockfile" :date (25752 55700 922650 54000)
                      :recipe
                      (:package "flycheck-nimsuggest" :fetcher github :repo
                                "yuutayamada/flycheck-nimsuggest" :files
                                ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                                 "*.texinfo" "doc/dir" "doc/*.info"
                                 "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                                 (:exclude ".dir-locals.el" "test.el"
                                           "tests.el" "*-test.el" "*-tests.el"
                                           "LICENSE" "README*" "*-pkg.el"))
                                :protocol https :inherit t :depth 1 :ref
                                "dc9a5de1cb3ee05db5794d824610959a1f603bc9"))
 (nim-mode :source "lockfile" :date (25752 55700 920680 649000) :recipe
           (:package "nim-mode" :fetcher github :repo "nim-lang/nim-mode"
                     :old-names (nimrod-mode) :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "744e076f0bea1c5ddc49f92397d9aa98ffa7eff8"))
 (h5dump-mode :source "lockfile" :date (25752 55700 918768 682000) :recipe
              (:package "h5dump-mode" :fetcher github :repo
                        "berquist/h5dump-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "3c9e4608112da91db76bf316417023bed0422ef3"))
 (apptainer-mode :source "lockfile" :date (25752 55700 915922 492000) :recipe
                 (:protocol https :inherit t :depth 1 :host github :repo
                            "berquist/apptainer-mode" :package
                            "apptainer-mode" :ref
                            "d750ce3b01cae8c02065287f03023a392eaf6a50"))
 (crontab-mode :source "lockfile" :date (25752 55700 913396 597000) :recipe
               (:package "crontab-mode" :repo "emacs-pe/crontab-mode" :fetcher
                         github :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "7412f3df0958812bfcacd5875a409fa795fa8ecc"))
 (cwl-mode :source "lockfile" :date (25752 55700 911559 581000) :recipe
           (:package "cwl-mode" :repo "tom-tan/cwl-mode" :fetcher github
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "23a333119efaac78453cba95d316109805bd6aec"))
 (dockerfile-mode :source "lockfile" :date (25752 55700 909142 662000) :recipe
                  (:package "dockerfile-mode" :fetcher github :repo
                            "spotify/dockerfile-mode" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                             "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el"
                                       "*-test.el" "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref
                            "52c6c00da1d31c0b6c29c74335b3af63ed6bf06c"))
 (earthfile-mode :source "lockfile" :date (25752 55700 906686 468000) :recipe
                 (:package "earthfile-mode" :fetcher github :repo
                           "earthly/earthly-emacs" :files
                           ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                            "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                            "doc/*.texinfo" "lisp/*.el"
                            (:exclude ".dir-locals.el" "test.el" "tests.el"
                                      "*-test.el" "*-tests.el" "LICENSE"
                                      "README*" "*-pkg.el"))
                           :protocol https :inherit t :depth 1 :ref
                           "a242a4d68ebefce81879823c54155e0a04d3ea4a"))
 (elixir-mode :source "lockfile" :date (25752 55700 904535 310000) :recipe
              (:package "elixir-mode" :fetcher github :repo
                        "elixir-editors/emacs-elixir" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "6c7f2b2b358919c6a3dd857c9de66d32ca6f9a8c"))
 (ess :source "lockfile" :date (25752 55700 902443 143000) :recipe
      (:package "ess" :repo "emacs-ess/ESS" :fetcher github :files
                ("lisp/*.el" "doc/ess.texi" ("etc" "etc/*")
                 ("obsolete" "lisp/obsolete/*") (:exclude "etc/other"))
                :protocol https :inherit t :depth 1 :ref
                "5c4ae91cefa5c56fd13b204a9a996825af836a67"))
 (exercism-modern :source "lockfile" :date (25752 55700 899979 976000) :recipe
                  (:protocol https :inherit t :depth 1 :host github :repo
                             "elken/exercism-modern" :files ("*.el" "icons")
                             :package "exercism-modern" :ref
                             "e5b492e188d63ed7e3265ebd84b60d4614149790"))
 (go-mode :source "lockfile" :date (25752 55700 898224 965000) :recipe
          (:package "go-mode" :repo "dominikh/go-mode.el" :fetcher github
                    :files ("go-mode.el") :protocol https :inherit t :depth 1
                    :ref "f21347ae9cf68ea33031bf5125896e8f16c8183c"))
 (graphviz-dot-mode :source "lockfile" :date (25752 55700 896191 659000)
                    :recipe
                    (:package "graphviz-dot-mode" :repo
                              "ppareit/graphviz-dot-mode" :fetcher github
                              :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                               "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                               "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el"
                                         "*-test.el" "*-tests.el" "LICENSE"
                                         "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref
                              "8ff793b13707cb511875f56e167ff7f980a31136"))
 (groovy-mode :source "lockfile" :date (25752 55700 894227 263000) :recipe
              (:package "groovy-mode" :fetcher github :repo
                        "Groovy-Emacs-Modes/groovy-emacs-modes" :files
                        ("*groovy*.el") :protocol https :inherit t :depth 1
                        :ref "7b8520b2e2d3ab1d62b35c426e17ac25ed0120bb"))
 (jenkinsfile-mode :source "lockfile" :date (25752 55700 891309 629000)
                   :recipe
                   (:package "jenkinsfile-mode" :repo
                             "john2x/jenkinsfile-mode" :fetcher github :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                              "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                              "doc/*.texinfo" "lisp/*.el"
                              (:exclude ".dir-locals.el" "test.el" "tests.el"
                                        "*-test.el" "*-tests.el" "LICENSE"
                                        "README*" "*-pkg.el"))
                             :protocol https :inherit t :depth 1 :ref
                             "568865ee419e0592de0dd0717d6769a66d9df111"))
 (just-mode :source "lockfile" :date (25752 55700 888200 804000) :recipe
            (:package "just-mode" :repo "leon-barrett/just-mode.el" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "d7f52eab8fa3828106f80acb1e2176e5877b7191"))
 (lox-mode :source "lockfile" :date (25752 55700 886043 123000) :recipe
           (:package "lox-mode" :repo "timmyjose-projects/lox-mode" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "b6935b3f5b131d2c1c7685cf6464274f7cd64943"))
 (lua-mode :source "lockfile" :date (25752 55700 883914 688000) :recipe
           (:package "lua-mode" :repo "immerrr/lua-mode" :fetcher github
                     :files (:defaults (:exclude "init-tryout.el")) :protocol
                     https :inherit t :depth 1 :ref
                     "ad639c62e38a110d8d822c4f914af3e20b40ccc4"))
 (meson-mode :source "lockfile" :date (25752 55700 881094 678000) :recipe
             (:package "meson-mode" :fetcher github :repo
                       "wentasah/meson-mode" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "82220d12899b87acb3c862b17368f63de7d08d07"))
 (nix-mode :source "lockfile" :date (25752 55700 878593 88000) :recipe
           (:package "nix-mode" :fetcher github :repo "NixOS/nix-mode" :files
                     (:defaults (:exclude "nix-company.el" "nix-mode-mmm.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "719feb7868fb567ecfe5578f6119892c771ac5e5"))
 (pacfiles-mode :source "lockfile" :date (25752 55700 876104 243000) :recipe
                (:package "pacfiles-mode" :repo "UndeadKernel/pacfiles-mode"
                          :fetcher github :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "a613d1d88dba4cb293ecaf42a9aeff7d8a3ce8aa"))
 (pdf-tools :source "lockfile" :date (25752 55700 874133 826000) :recipe
            (:package "pdf-tools" :fetcher github :repo "vedang/pdf-tools"
                      :files
                      (:defaults "README" ("build" "Makefile")
                                 ("build" "server"))
                      :protocol https :inherit t :depth 1 :ref
                      "c69e7656a4678fe25afbd29f3503dd19ee7f9896"))
 (pkgbuild-mode :source "lockfile" :date (25752 55700 871531 276000) :recipe
                (:package "pkgbuild-mode" :fetcher github :repo
                          "juergenhoetzel/pkgbuild-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "9525be8ecbd3a0d0bc7cc27e6d0f403e111aa067"))
 (snakemake-mode :source "lockfile" :date (25752 55700 869510 995000) :recipe
                 (:package "snakemake-mode" :fetcher github :repo
                           "kyleam/snakemake-mode" :files
                           ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                            "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                            "doc/*.texinfo" "lisp/*.el"
                            (:exclude ".dir-locals.el" "test.el" "tests.el"
                                      "*-test.el" "*-tests.el" "LICENSE"
                                      "README*" "*-pkg.el"))
                           :protocol https :inherit t :depth 1 :ref
                           "0c4c5b6a25735ac025ce124ace9f0259eb5198e9"))
 (systemd :source "lockfile" :date (25752 55700 866356 584000) :recipe
          (:package "systemd" :fetcher github :repo "holomorph/systemd-mode"
                    :files (:defaults "*.txt") :protocol https :inherit t
                    :depth 1 :ref "8742607120fbc440821acbc351fda1e8e68a8806"))
 (tracwiki-mode :source "lockfile" :date (25752 55700 864346 141000) :recipe
                (:package "tracwiki-mode" :fetcher github :repo
                          "merickson/tracwiki-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "6a620444d59b438f42383b48cd4c19c03105dba6"))
 (wakatime-mode :source "lockfile" :date (25752 55700 862085 466000) :recipe
                (:package "wakatime-mode" :fetcher github :repo
                          "wakatime/wakatime-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "ef923829912c3854d230834f81083814b7c9d992"))
 (s :source "lockfile" :date (25752 55700 859127 917000) :recipe
    (:package "s" :fetcher github :repo "magnars/s.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir"
               "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                         "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
              :protocol https :inherit t :depth 1 :ref
              "dda84d38fffdaf0c9b12837b504b402af910d01d"))
 (f :source "lockfile" :date (25752 55700 856274 604000) :recipe
    (:package "f" :fetcher github :repo "rejeep/f.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir"
               "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                         "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
              :protocol https :inherit t :depth 1 :ref
              "af7d37c619010b576fd22b50c62c71ff33093f3c"))
 (elisp-refs :source "lockfile" :date (25752 55700 853560 974000) :recipe
             (:package "elisp-refs" :repo "Wilfred/elisp-refs" :fetcher github
                       :files (:defaults (:exclude "elisp-refs-bench.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "bf3cca8f74065b1b31036f461e3a093b162311bd"))
 (wgrep :source "lockfile" :date (25752 55700 850486 434000) :recipe
        (:package "wgrep" :fetcher github :repo "mhayashi1120/Emacs-wgrep"
                  :files ("wgrep.el") :protocol https :inherit t :depth 1 :ref
                  "3132abd3750b8c87cbcf6942db952acfab5edccd"))
 (spinner :source "lockfile" :date (25752 55700 847716 969000) :recipe
          (:package "spinner" :host github :files ("*" (:exclude ".git"))
                    :repo "emacs-straight/spinner" :protocol https :inherit t
                    :depth 1 :ref "634529bb3173e09b37499f636de70abf29d9fa8a"))
 (ht :source "lockfile" :date (25752 55700 844539 836000) :recipe
     (:package "ht" :fetcher github :repo "Wilfred/ht.el" :files
               ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir"
                "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                          "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
               :protocol https :inherit t :depth 1 :ref
               "3c1677f1bf2ded2ab07edffb7d17def5d2b5b6f6"))
 (lv :source "lockfile" :date (25752 55700 841644 343000) :recipe
     (:package "lv" :repo "abo-abo/hydra" :fetcher github :files ("lv.el")
               :protocol https :inherit t :depth 1 :ref
               "317e1de33086637579a7aeb60f77ed0405bf359b"))
 (eldoc :source "lockfile" :date (25752 55700 839487 243000) :recipe
        (:package "eldoc" :host github :files ("*" (:exclude ".git")) :repo
                  "emacs-straight/eldoc" :protocol https :inherit t :depth 1
                  :ref "bf2e88dcf00e6554e24b517aa315527011042fae"))
 (load-relative :source "lockfile" :date (25752 55700 835955 461000) :recipe
                (:package "load-relative" :fetcher github :repo
                          "rocky/emacs-load-relative" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                           "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el"
                                     "*-test.el" "*-tests.el" "LICENSE"
                                     "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref
                          "b7987c265a64435299d6b02f960ed2c894c4a145"))
 (loc-changes :source "lockfile" :date (25752 55700 832572 609000) :recipe
              (:package "loc-changes" :fetcher github :repo
                        "rocky/emacs-loc-changes" :files ("loc-changes.el")
                        :protocol https :inherit t :depth 1 :ref
                        "622371e432f50626aaac82f8ee2841f71685b0fb"))
 (test-simple :source "lockfile" :date (25752 55700 829255 671000) :recipe
              (:package "test-simple" :fetcher github :repo
                        "rocky/emacs-test-simple" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "ce6de04636e8d19ec84a475c03c0142b20a63de0"))
 (pkg-info :source "lockfile" :date (25752 55700 825271 54000) :recipe
           (:package "pkg-info" :repo "emacsorphanage/pkg-info" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "76ba7415480687d05a4353b27fea2ae02b8d9d61"))
 (let-alist :source
   "lockfile" :date (25752 55700 822532 578000) :recipe
   (:package "let-alist" :host github :files ("*" (:exclude ".git")) :repo
             "emacs-straight/let-alist" :protocol https :inherit t :depth 1
             :ref "021fc10df2e44faba4728d849ee767cf890aa51a"))
 (epl :source "lockfile" :date (25752 55700 820285 18000) :recipe
      (:package "epl" :repo "cask/epl" :fetcher github :files
                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                 "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                 "lisp/*.el"
                 (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                           "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                :protocol https :inherit t :depth 1 :ref
                "78ab7a85c08222cd15582a298a364774e3282ce6"))
 (hydra :source "lockfile" :date (25752 55700 817218 763000) :recipe
        (:package "hydra" :repo "abo-abo/hydra" :fetcher github :files
                  (:defaults (:exclude "lv.el")) :protocol https :inherit t
                  :depth 1 :ref "317e1de33086637579a7aeb60f77ed0405bf359b"))
 (with-editor :source "lockfile"
   :date (25752 55700 815210 625000) :recipe
   (:package "with-editor" :fetcher github :repo "magit/with-editor" :files
             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir"
              "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
              (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                        "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
             :protocol https :inherit t :depth 1 :ref
             "9e437353ee817b8e6a9ffce53e37fe5a6fcb4294"))
 (magit-section :source "lockfile" :date (25752 55700 813112 366000) :recipe
                (:package "magit-section" :fetcher github :repo "magit/magit"
                          :files
                          ("lisp/magit-section.el" "lisp/magit-section-pkg.el"
                           "docs/magit-section.texi"
                           "Documentation/magit-section.texi")
                          :protocol https :inherit t :depth 1 :ref
                          "24f64fd4f8ed4a4a302fd9227febad63507d7287"))
 (ace-window :source "lockfile" :date (25752 55700 810553 248000) :recipe
             (:package "ace-window" :repo "abo-abo/ace-window" :fetcher github
                       :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                        "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                        "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el"
                                  "*-test.el" "*-tests.el" "LICENSE" "README*"
                                  "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref
                       "77115afc1b0b9f633084cf7479c767988106c196"))
 (avy :source "lockfile" :date (25752 55700 808045 798000) :recipe
      (:package "avy" :repo "abo-abo/avy" :fetcher github :files
                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                 "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                 "lisp/*.el"
                 (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                           "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                :protocol https :inherit t :depth 1 :ref
                "be612110cb116a38b8603df367942e2bb3d9bdbe"))
 (clang-format :source "lockfile" :date (25752 55700 805152 289000) :recipe
               (:package "clang-format" :fetcher github :repo
                         "emacsmirror/clang-format" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                          "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                          "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el"
                                    "*-test.el" "*-tests.el" "LICENSE"
                                    "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref
                         "e48ff8ae18dc7ab6118c1f6752deb48cb1fc83ac"))
 (reformatter :source "lockfile" :date (25752 55700 802022 645000) :recipe
              (:package "reformatter" :repo "purcell/emacs-reformatter"
                        :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "1cbf7225b0f934a32bec98ca1f78e8dee77aef94"))
 (pythonic :source "lockfile" :date (25752 55700 799769 334000) :recipe
           (:package "pythonic" :fetcher github :repo
                     "pythonic-emacs/pythonic" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "c18a5bd8cb2ba59014b6b29b5bf1903bd2476a07"))
 (rust-mode :source "lockfile" :date (25752 55700 796842 262000) :recipe
            (:package "rust-mode" :repo "rust-lang/rust-mode" :fetcher github
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "e443ccf2884028d3b6cc550ff20e7c92dadccb68"))
 (xterm-color :source "lockfile" :date (25752 55700 794701 493000) :recipe
              (:package "xterm-color" :repo "atomontage/xterm-color" :fetcher
                        github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                         "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                         "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el"
                                   "*-test.el" "*-tests.el" "LICENSE"
                                   "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref
                        "2ad407c651e90fff2ea85d17bf074cee2c022912"))
 (package-lint :source "lockfile" :date (25752 55700 792482 868000) :recipe
               (:package "package-lint" :fetcher github :repo
                         "purcell/package-lint" :files
                         (:defaults "data" (:exclude "*flymake.el")) :protocol
                         https :inherit t :depth 1 :ref
                         "933cb1ef5938c5f99f8d388027bc0e8518fdada9"))
 (parseedn :source "lockfile" :date (25752 55700 789738 981000) :recipe
           (:package "parseedn" :repo "clojure-emacs/parseedn" :fetcher github
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "a09686fbb9113b8b1b4f20c9e1dc0d6fea01a64f"))
 (queue :source "lockfile" :date (25752 55700 786899 534000) :recipe
        (:package "queue" :host github :files ("*" (:exclude ".git")) :repo
                  "emacs-straight/queue" :protocol https :inherit t :depth 1
                  :ref "130c2d656cd5d7376552272fab9e50a7c37d0c4a"))
 (sesman :source "lockfile" :date (25752 55700 784632 708000) :recipe
         (:package "sesman" :repo "vspinu/sesman" :fetcher github :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                    "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                    "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE" "README*"
                              "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref
                   "e0f555f963c9f02f8e4a50e06fc353eb4c15ee77"))
 (parseclj :source "lockfile" :date (25752 55700 782361 323000) :recipe
           (:package "parseclj" :repo "clojure-emacs/parseclj" :fetcher github
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                      "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                      "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE" "README*"
                                "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref
                     "4d0e780e00f1828b00c43099e6eebc6582998f72"))
 (epc :source "lockfile" :date (25752 55700 779464 748000) :recipe
      (:package "epc" :repo "kiwanami/emacs-epc" :fetcher github :files
                ("epc.el" "epcs.el") :protocol https :inherit t :depth 1 :ref
                "e1bfa5ca163273859336e3cc89b4b6460f7f8cda"))
 (commenter :source "lockfile" :date (25752 55700 776577 662000) :recipe
            (:package "commenter" :fetcher github :repo
                      "yuutayamada/commenter" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                       "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                       "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE" "README*"
                                 "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref
                      "6d1885419434ba779270c6fda0e30d390bb074bd"))
 (concurrent :source "lockfile" :date (25752 55700 773722 586000) :recipe
             (:package "concurrent" :repo "kiwanami/emacs-deferred" :fetcher
                       github :files ("concurrent.el") :protocol https
                       :inherit t :depth 1 :ref
                       "2239671d94b38d92e9b28d4e12fd79814cfb9c16"))
 (ctable :source "lockfile" :date (25752 55700 772088 974000) :recipe
         (:package "ctable" :repo "kiwanami/emacs-ctable" :fetcher github
                   :files ("ctable.el") :protocol https :inherit t :depth 1
                   :ref "48b73742757a3ae5736d825fe49e00034cc453b5"))
 (deferred :source "lockfile" :date (25752 55700 769635 916000) :recipe
           (:package "deferred" :repo "kiwanami/emacs-deferred" :fetcher
                     github :files ("deferred.el") :protocol https :inherit t
                     :depth 1 :ref "2239671d94b38d92e9b28d4e12fd79814cfb9c16"))
 (request :source "lockfile"
   :date (25752 55700 766282 39000) :recipe
   (:package "request" :repo "tkf/emacs-request" :fetcher github :files
             ("request.el") :protocol https :inherit t :depth 1 :ref
             "01e338c335c07e4407239619e57361944a82cb8a"))
 (async :source "lockfile" :date (25752 55700 764383 167000) :recipe
        (:package "async" :repo "jwiegley/emacs-async" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                   "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                   "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el"
                             "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref
                  "3ae74c0a4ba223ba373e0cb636c385e08d8838be"))
 (tablist :source "lockfile" :date (25752 55700 762187 865000) :recipe
          (:package "tablist" :fetcher github :repo "emacsorphanage/tablist"
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "5f7b71a92bfb25418d7da86ad9c45f14b149496f"))
 (xml-rpc :source "lockfile" :date (25752 55700 758769 35000) :recipe
          (:package "xml-rpc" :fetcher github :repo "xml-rpc-el/xml-rpc-el"
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                     "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                     "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE" "README*"
                               "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref
                    "8272789df8a4deab4de7d50e63b73b7d0543bc7f")))
