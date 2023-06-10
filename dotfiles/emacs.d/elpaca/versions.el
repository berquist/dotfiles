((elpaca :source "lockfile" :date
         (25731 62335 180768 965000)
         :recipe
         (:protocol https :inherit t :depth 1 :repo "https://github.com/progfolio/elpaca.git" :ref "f2a2414821bb5fb21623de3111d778a33f13bdfc" :files
                    (:defaults
                     (:exclude "extensions"))
                    :build
                    (:not elpaca--activate-package)
                    :package "elpaca"))
 (elpaca-use-package :source "lockfile" :date
                     (25731 62335 178069 513000)
                     :recipe
                     (:package "elpaca-use-package" :repo "https://github.com/progfolio/elpaca.git" :files
                               ("extensions/elpaca-use-package.el")
                               :main "extensions/elpaca-use-package.el" :build
                               (:not elpaca--compile-info)
                               :protocol https :inherit t :depth 1 :ref "f2a2414821bb5fb21623de3111d778a33f13bdfc"))
 (no-littering :source "lockfile" :date
               (25731 62335 174881 982000)
               :recipe
               (:package "no-littering" :fetcher github :repo "emacscollective/no-littering" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "8f3934a965ce66f897593a8400cf426dc20e5bd5"))
 (dash :source "lockfile" :date
       (25731 62335 172007 891000)
       :recipe
       (:package "dash" :fetcher github :repo "magnars/dash.el" :files
                 ("dash.el" "dash.texi")
                 :protocol https :inherit t :depth 1 :ref "96eaba028ac069ea0e5cc70de15b0229126a054a"))
 (delight :source "lockfile" :date
          (25731 62335 168821 533000)
          :recipe
          (:package "delight" :host github :files
                    ("*"
                     (:exclude ".git"))
                    :repo "emacs-straight/delight" :protocol https :inherit t :depth 1 :ref "70cb8cec9e5eb2c24364e065d85c2ea8f14a587c"))
 (exec-path-from-shell :source "lockfile" :date
                       (25731 62335 165478 358000)
                       :recipe
                       (:package "exec-path-from-shell" :fetcher github :repo "purcell/exec-path-from-shell" :files
                                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                                  (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                                 :protocol https :inherit t :depth 1 :ref "ddd24dc823de9a94435b4d8ea7569161657f31e2"))
 (compat :source "lockfile" :date
         (25731 62335 161285 164000)
         :recipe
         (:package "compat" :host github :files
                   ("*"
                    (:exclude ".git"))
                   :repo "emacs-straight/compat" :protocol https :inherit t :depth 1 :ref "e07c0f29d45a73cc0bdf9423780979978c1d9d22"))
 (which-key :source "lockfile" :date
            (25731 62335 158087 353000)
            :recipe
            (:package "which-key" :repo "justbur/emacs-which-key" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "ee6f0637f75ded903653b7a300a8588e3a8427f7"))
 (helpful :source "lockfile" :date
          (25731 62335 155397 439000)
          :recipe
          (:package "helpful" :repo "Wilfred/helpful" :fetcher github :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "32cb28b50b3366ad35e2cb936367268ddeec745f"))
 (yasnippet :source "lockfile" :date
            (25731 62335 152440 653000)
            :recipe
            (:package "yasnippet" :repo "joaotavora/yasnippet" :fetcher github :files
                      ("yasnippet.el" "snippets")
                      :protocol https :inherit t :depth 1 :ref "5cbdbf0d2015540c59ed8ee0fcf4788effdf75b6"))
 (yasnippet-snippets :source "lockfile" :date
                     (25731 62335 149212 806000)
                     :recipe
                     (:package "yasnippet-snippets" :repo "AndreaCrotti/yasnippet-snippets" :fetcher github :files
                               ("*.el" "snippets" ".nosearch")
                               :protocol https :inherit t :depth 1 :ref "8e4c521252501dd9ad71ea78fae14683ab7a14cb"))
 (abyss-theme :source "lockfile" :date
              (25731 62335 146352 180000)
              :recipe
              (:package "abyss-theme" :fetcher github :repo "mgrbyte/emacs-abyss-theme" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "18791c6e8d9cc2b4815c9f08627a2e94fc0eeb14"))
 (base16-theme :source "lockfile" :date
               (25731 62335 142304 19000)
               :recipe
               (:package "base16-theme" :repo "tinted-theming/base16-emacs" :fetcher github :files
                         (:defaults "build/*.el")
                         :protocol https :inherit t :depth 1 :ref "111de0722f13e15f406806e43ae1dbc97251912c"))
 (base16-eva-theme :source "lockfile" :date
                   (25731 62335 139181 580000)
                   :recipe
                   (:protocol https :inherit t :depth 1 :host github :repo "kjakapat/eva-theme" :files
                              ("emacs/build/*.el")
                              :package "base16-eva-theme" :ref "273cdeeb1c520b9ecb8ce3ab627015b26264972b"))
 (colonoscopy-theme :source "lockfile" :date
                    (25731 62335 135678 416000)
                    :recipe
                    (:package "colonoscopy-theme" :fetcher github :repo "emacsfodder/emacs-colonoscopy-theme" :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref "64bbb322b13dae91ce9f1e3581f836f94f800ead"))
 (dracula-theme :source "lockfile" :date
                (25731 62335 132525 129000)
                :recipe
                (:package "dracula-theme" :fetcher github :repo "dracula/emacs" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "54c26402555ab5b8b7cfd8ee2488c57b2fa5d32a"))
 (ef-themes :source "lockfile" :date
            (25731 62335 129226 719000)
            :recipe
            (:package "ef-themes" :host github :files
                      ("*"
                       (:exclude ".git"))
                      :repo "emacs-straight/ef-themes" :protocol https :inherit t :depth 1 :ref "d0f94e487a2949b2c20d01d532f79b24493907c5"))
 (gotham-theme :source "lockfile" :date
               (25731 62335 126232 1000)
               :recipe
               (:package "gotham-theme" :fetcher git :url "https://depp.brause.cc/gotham-theme.git" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "4b8214df0851bb69b44c3e864568b7e0030a95d2"))
 (plan9-theme :source "lockfile" :date
              (25731 62335 123059 959000)
              :recipe
              (:package "plan9-theme" :fetcher github :repo "john2x/plan9-theme.el" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "c2da2fcb241e9800d931a1ff19ecd9fd84d30382"))
 (punpun-themes :source "lockfile" :date
                (25731 62335 119854 274000)
                :recipe
                (:package "punpun-themes" :fetcher git :url "https://depp.brause.cc/punpun-themes.git" :old-names
                          (punpun-theme)
                          :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "6a7e04de1ad9f7ba9074b7206bffc9241c33349c"))
 (rebecca-theme :source "lockfile" :date
                (25731 62335 116676 982000)
                :recipe
                (:package "rebecca-theme" :fetcher github :repo "vic/rebecca-theme" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "4b8b5aae9099185e07c2b4cac4943c7f66a3f003"))
 (spacegray-theme :source "lockfile" :date
                  (25731 62335 113689 47000)
                  :recipe
                  (:package "spacegray-theme" :fetcher github :repo "bruce/emacs-spacegray-theme" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref "9826265c2bceb2ebc1c5e16a45021da0253ace97"))
 (tron-legacy-theme :source "lockfile" :date
                    (25731 62335 110187 966000)
                    :recipe
                    (:package "tron-legacy-theme" :fetcher github :repo "ianyepan/tron-legacy-emacs-theme" :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref "c707baf08516f69a88ca2f494a9556ac6d1986f4"))
 (rainbow-mode :source "lockfile" :date
               (25731 62335 106932 76000)
               :recipe
               (:package "rainbow-mode" :host github :files
                         ("*"
                          (:exclude ".git"))
                         :repo "emacs-straight/rainbow-mode" :protocol https :inherit t :depth 1 :ref "8e96388fb4d616a9dde23e712bad0d9cd048fbf0"))
 (default-text-scale :source "lockfile" :date
                     (25731 62335 104002 531000)
                     :recipe
                     (:package "default-text-scale" :fetcher github :repo "purcell/default-text-scale" :files
                               ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                                (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                               :protocol https :inherit t :depth 1 :ref "bfc0987c37e93742255d3b23d86c17096fda8e7e"))
 (dtrt-indent :source "lockfile" :date
              (25731 62335 100495 138000)
              :recipe
              (:package "dtrt-indent" :fetcher github :repo "jscheid/dtrt-indent" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "07364ae07301f6f0a1713a8dff520c813849ffb3"))
 (unfill :source "lockfile" :date
         (25731 62335 97611 388000)
         :recipe
         (:package "unfill" :fetcher github :repo "purcell/unfill" :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref "075052ce0b4451d7d3ede013ce5a77e6a7a92360"))
 (vertico :source "lockfile" :date
          (25731 62335 94488 779000)
          :recipe
          (:package "vertico" :host github :files
                    ("*"
                     (:exclude ".git"))
                    :repo "emacs-straight/vertico" :protocol https :inherit t :depth 1 :ref "17d7cf79888114c1cbea89cd8e58a3bba986f369"))
 (orderless :source "lockfile" :date
            (25731 62335 91375 67000)
            :recipe
            (:package "orderless" :repo "oantolin/orderless" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "e6784026717a8a6a7dcd0bf31fd3414f148c542e"))
 (marginalia :source "lockfile" :date
             (25731 62335 88312 652000)
             :recipe
             (:package "marginalia" :repo "minad/marginalia" :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "ae454a2aa0c5d85b5e151938b310e7d16538157d"))
 (ctrlf :source "lockfile" :date
        (25731 62335 85151 90000)
        :recipe
        (:package "ctrlf" :fetcher github :repo "radian-software/ctrlf" :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref "9b4cf6c79a961f2bfbb949805aa300fcf1eb40a6"))
 (ripgrep :source "lockfile" :date
          (25731 62335 82472 928000)
          :recipe
          (:package "ripgrep" :repo "nlamirault/ripgrep.el" :fetcher github :files
                    ("ripgrep.el")
                    :protocol https :inherit t :depth 1 :ref "b6bd5beb0c11348f1afd9486cbb451d0d2e3c45a"))
 (rg :source "lockfile" :date
     (25731 62335 79272 52000)
     :recipe
     (:package "rg" :fetcher github :repo "dajva/rg.el" :files
               ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
               :protocol https :inherit t :depth 1 :ref "e9dc4ed342e0212d08fb82554dfd3c57fdfa5b1a"))
 (deadgrep :source "lockfile" :date
           (25731 62335 75139 171000)
           :recipe
           (:package "deadgrep" :repo "Wilfred/deadgrep" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "139e967e1f646d557996e012c2855648a180cc9d"))
 (projectile :source "lockfile" :date
             (25731 62335 72036 540000)
             :recipe
             (:package "projectile" :fetcher github :repo "bbatsov/projectile" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "31b87151b1fe43221736ded957a1123a54e32531"))
 (direnv :source "lockfile" :date
         (25731 62335 68895 877000)
         :recipe
         (:package "direnv" :fetcher github :repo "wbolster/emacs-direnv" :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref "268536f564b7eba99264a89a9149268eb4bc67ac"))
 (dotenv-mode :source "lockfile" :date
              (25731 62335 65978 535000)
              :recipe
              (:package "dotenv-mode" :repo "preetpalS/emacs-dotenv-mode" :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "e3701bf739bde44f6484eb7753deadaf691b73fb"))
 (vagrant-tramp :source "lockfile" :date
                (25731 62335 62885 461000)
                :recipe
                (:package "vagrant-tramp" :fetcher github :repo "dougm/vagrant-tramp" :files
                          ("*.el" "bin")
                          :protocol https :inherit t :depth 1 :ref "2b7a4fabd328961384da06e0e302250cd97edc47"))
 (langtool :source "lockfile" :date
           (25731 62335 60137 568000)
           :recipe
           (:package "langtool" :fetcher github :repo "mhayashi1120/Emacs-langtool" :files
                     ("langtool.el")
                     :protocol https :inherit t :depth 1 :ref "d86101eafe9a994eb0425e08e7c1795e9cb0cd42"))
 (company :source "lockfile" :date
          (25731 62335 57041 770000)
          :recipe
          (:package "company" :fetcher github :repo "company-mode/company-mode" :files
                    (:defaults "icons"
                               ("images/small" "doc/images/small/*.png"))
                    :protocol https :inherit t :depth 1 :ref "8a78f320019574bc35b5727f95b052b27918da20"))
 (lsp-mode :source "lockfile" :date
           (25731 62335 54289 468000)
           :recipe
           (:package "lsp-mode" :repo "emacs-lsp/lsp-mode" :fetcher github :files
                     (:defaults "clients/*.el")
                     :protocol https :inherit t :depth 1 :ref "18c94fa20c7039471dbca1dee7e68d9025f0e7b2"))
 (realgud :source "lockfile" :date
          (25731 62335 50821 499000)
          :recipe
          (:package "realgud" :fetcher github :repo "realgud/realgud" :files
                    ("realgud.el" "realgud/.nosearch" "realgud-recursive-autoloads.el"
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
                     ("realgud/debugger/trepan.pl" "realgud/debugger/trepan.pl/*.el")
                     ("realgud/debugger/trepan2" "realgud/debugger/trepan2/*.el")
                     ("realgud/debugger/trepan3k" "realgud/debugger/trepan3k/*.el")
                     ("realgud/debugger/trepanjs" "realgud/debugger/trepanjs/*.el")
                     ("realgud/debugger/zshdb" "realgud/debugger/zshdb/*.el")
                     ("realgud/lang" "realgud/lang/*.el"))
                    :protocol https :inherit t :depth 1 :ref "aff03aeef1e40d2abb244240bab9787f4b3e6035"))
 (realgud-ipdb :source "lockfile" :date
               (25731 62335 47736 621000)
               :recipe
               (:package "realgud-ipdb" :fetcher github :repo "realgud/realgud-ipdb" :files
                         (:defaults
                          ("ipdb" "ipdb/*.el"))
                         :protocol https :inherit t :depth 1 :ref "acc9e550883906cb608fdd0aba67f2a33f997e01"))
 (flycheck :source "lockfile" :date
           (25731 62335 44689 515000)
           :recipe
           (:package "flycheck" :repo "flycheck/flycheck" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "5f2ef177cb21ae8b73714575802beef04abd0f5e"))
 (vdiff :source "lockfile" :date
        (25731 62335 40525 335000)
        :recipe
        (:package "vdiff" :repo "justbur/emacs-vdiff" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref "d5df45f84395f507aba555a54407b60e284b23cd"))
 (git-commit :source "lockfile" :date
             (25731 62335 37595 449000)
             :recipe
             (:package "git-commit" :fetcher github :repo "magit/magit" :files
                       ("lisp/git-commit.el" "lisp/git-commit-pkg.el")
                       :old-names
                       (git-commit-mode)
                       :protocol https :inherit t :depth 1 :ref "508041d0842467d173c587cb02b326f93838f99d"))
 (git-modes :source "lockfile" :date
            (25731 62335 34919 792000)
            :recipe
            (:package "git-modes" :fetcher github :repo "magit/git-modes" :old-names
                      (gitattributes-mode gitconfig-mode gitignore-mode)
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "44d536ba637235c9dd203410281397417a3e60b6"))
 (magit :source "lockfile" :date
        (25731 62335 32371 594000)
        :recipe
        (:package "magit" :fetcher github :repo "magit/magit" :files
                  ("lisp/magit*.el" "lisp/git-rebase.el" "docs/magit.texi" "docs/AUTHORS.md" "LICENSE" "Documentation/magit.texi" "Documentation/AUTHORS.md"
                   (:exclude "lisp/magit-libgit.el" "lisp/magit-libgit-pkg.el" "lisp/magit-section.el" "lisp/magit-section-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref "508041d0842467d173c587cb02b326f93838f99d"))
 (git-timemachine :source "lockfile" :date
                  (25731 62335 30155 583000)
                  :recipe
                  (:package "git-timemachine" :fetcher codeberg :repo "pidu/git-timemachine" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref "13769fb603ae88c64566529eae4525ce88026e86"))
 (pandoc-mode :source "lockfile" :date
              (25731 62335 27014 259000)
              :recipe
              (:package "pandoc-mode" :fetcher github :repo "joostkremers/pandoc-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "da3f0f5238a8b1e5f09f2ec97e683dc488d25be0"))
 (htmlize :source "lockfile" :date
          (25731 62335 24045 930000)
          :recipe
          (:package "htmlize" :fetcher github :repo "hniksic/emacs-htmlize" :version-regexp "release/\\(.*\\)" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "dd27bc3f26efd728f2b1f01f9e4ac4f61f2ffbf9"))
 (ox-gfm :source "lockfile" :date
         (25731 62335 21026 466000)
         :recipe
         (:package "ox-gfm" :fetcher github :repo "larstvei/ox-gfm" :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref "46faa67dbb3fb0cd7a76c3fe518f16e4195c22c7"))
 (ox-pandoc :source "lockfile" :date
            (25731 62335 17998 835000)
            :recipe
            (:package "ox-pandoc" :repo "emacsorphanage/ox-pandoc" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "66c32cca4f6047dd7e0f77f10bd565a2d83d4729"))
 (ox-trac :source "lockfile" :date
          (25731 62335 15186 140000)
          :recipe
          (:package "ox-trac" :fetcher github :repo "JalapenoGremlin/ox-trac" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "03cc31efb1aa06991918f1071e250a9d58f96cfb"))
 (eval-in-repl :source "lockfile" :date
               (25731 62335 12632 92000)
               :recipe
               (:package "eval-in-repl" :fetcher github :repo "kaz-yos/eval-in-repl" :commit "origin/master" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "2abb9ccf6f08ae3a5ab504f0b3fd81ce0345b766"))
 (clang-format+ :source "lockfile" :date
                (25731 62335 9575 207000)
                :recipe
                (:package "clang-format+" :repo "SavchenkoValeriy/emacs-clang-format-plus" :fetcher github :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "ddd4bfe1a13c2fd494ce339a320a51124c1d2f68"))
 (astyle :source "lockfile" :date
         (25731 62335 6496 320000)
         :recipe
         (:package "astyle" :repo "storvik/emacs-astyle" :fetcher github :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref "04ff2941f08c4b731fe6a18ee1697436d1ca1cc0"))
 (auctex :source "lockfile" :date
         (25731 62335 3616 248000)
         :recipe
         (:package "auctex" :host github :files
                   ("*"
                    (:exclude ".git"))
                   :repo "emacs-straight/auctex" :protocol https :inherit t :depth 1 :ref "f60d3b907618c2cbb527e59e29821465d6750993"))
 (python-docstring :source "lockfile" :date
                   (25731 62335 811 708000)
                   :recipe
                   (:package "python-docstring" :fetcher github :repo "glyph/python-docstring-mode" :files
                             ("docstring_wrap.py" "python-docstring.el")
                             :protocol https :inherit t :depth 1 :ref "40f0ca57831a71a9e6437088149784f37704ef6c"))
 (numpydoc :source "lockfile" :date
           (25731 62334 997784 830000)
           :recipe
           (:package "numpydoc" :fetcher github :repo "douglasdavis/numpydoc.el" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "935e6cb27ef278275dcf64dc603b58164848ab22"))
 (virtualenvwrapper :source "lockfile" :date
                    (25731 62334 994301 933000)
                    :recipe
                    (:package "virtualenvwrapper" :fetcher github :repo "porterjamesj/virtualenvwrapper.el" :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref "c7e84505db4142fd1beebf38ffe37c3f42444ca3"))
 (conda :source "lockfile" :date
        (25731 62334 991538 270000)
        :recipe
        (:package "conda" :repo "necaris/conda.el" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref "f3ea3876eecd00a1fca16fd7fd68e56e3beac87c"))
 (pyenv-mode :source "lockfile" :date
             (25731 62334 988696 850000)
             :recipe
             (:package "pyenv-mode" :fetcher github :repo "pythonic-emacs/pyenv-mode" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "b818901b8eac0e260ced66a6a5acabdbf6f5ba99"))
 (lsp-pyright :source "lockfile" :date
              (25731 62334 985620 579000)
              :recipe
              (:package "lsp-pyright" :repo "emacs-lsp/lsp-pyright" :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "54a2acddfdd7c3d31cb804a042305a3c6e60cf81"))
 (blacken :source "lockfile" :date
          (25731 62334 982125 980000)
          :recipe
          (:package "blacken" :fetcher github :repo "pythonic-emacs/blacken" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "1e80b970b130d5c33031f2539c89eb2f13da2572"))
 (python-isort :source "lockfile" :date
               (25731 62334 979286 243000)
               :recipe
               (:package "python-isort" :fetcher github :repo "wyuenho/emacs-python-isort" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "8b4948b7fcad90fc9b72f69f4653260bd21f62c3"))
 (cython-mode :source "lockfile" :date
              (25731 62334 975791 163000)
              :recipe
              (:package "cython-mode" :fetcher github :repo "cython/emacs-cython-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "3e4790559d3168fe992cf2aa62f01423038cedb5"))
 (flycheck-cython :source "lockfile" :date
                  (25731 62334 973271 580000)
                  :recipe
                  (:package "flycheck-cython" :fetcher github :repo "lbolla/emacs-flycheck-cython" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref "ecc4454d35ab5317ab66a04406f36f0c1dbc0b76"))
 (pip-requirements :source "lockfile" :date
                   (25731 62334 968321 230000)
                   :recipe
                   (:package "pip-requirements" :repo "Wilfred/pip-requirements.el" :fetcher github :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                              (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                             :protocol https :inherit t :depth 1 :ref "216cd1690f80cc965d4ae47b8753fc185f778ff6"))
 (markdown-mode :source "lockfile" :date
                (25731 62334 965441 78000)
                :recipe
                (:package "markdown-mode" :fetcher github :repo "jrblevin/markdown-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "f3ee31ffc28b3d8e86da2208c87eac75fd6e6eae"))
 (deft :source "lockfile" :date
       (25731 62334 962197 90000)
       :recipe
       (:package "deft" :repo "jrblevin/deft" :fetcher github :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                 :protocol https :inherit t :depth 1 :ref "28be94d89bff2e1c7edef7244d7c5ba0636b1296"))
 (cmake-mode :source "lockfile" :date
             (25731 62334 958856 681000)
             :recipe
             (:package "cmake-mode" :fetcher git :url "https://gitlab.kitware.com/cmake/cmake.git" :files
                       ("Auxiliary/*.el")
                       :protocol https :inherit t :depth 1 :ref "3b0a90968e1887a500c44c0e57be17f7b2be684b"))
 (editorconfig :source "lockfile" :date
               (25731 62334 955344 169000)
               :recipe
               (:package "editorconfig" :fetcher github :repo "editorconfig/editorconfig-emacs" :old-names
                         (editorconfig-core editorconfig-fnmatch)
                         :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "d4111f65c68f18f0dfb3072ee0d9b1d4cee80b52"))
 (julia-mode :source "lockfile" :date
             (25731 62334 951079 600000)
             :recipe
             (:package "julia-mode" :repo "JuliaEditorSupport/julia-emacs" :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "b35e668d6bcf0fb7de4a9ee1a72ae13aa4fb6562"))
 (vterm :source "lockfile" :date
        (25731 62334 947811 908000)
        :recipe
        (:package "vterm" :fetcher github :repo "akermu/emacs-libvterm" :files
                  ("CMakeLists.txt" "elisp.c" "elisp.h" "emacs-module.h" "etc" "utf8.c" "utf8.h" "vterm.el" "vterm-module.c" "vterm-module.h")
                  :protocol https :inherit t :depth 1 :ref "94e2b0b2b4a750e7907dacd5b4c0584900846dd1"))
 (julia-repl :source "lockfile" :date
             (25731 62334 944686 63000)
             :recipe
             (:package "julia-repl" :fetcher github :repo "tpapp/julia-repl" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "9503ef7110732e444e686e815c5b2ae8228d274d"))
 (lsp-julia :source "lockfile" :date
            (25731 62334 942160 519000)
            :recipe
            (:package "lsp-julia" :fetcher github :repo "gdkrmr/lsp-julia" :files
                      (:defaults "languageserver")
                      :protocol https :inherit t :depth 1 :ref "c584f79c7fee6176bbb6120f4cb0f1001bcf8113"))
 (yaml-mode :source "lockfile" :date
            (25731 62334 939398 839000)
            :recipe
            (:package "yaml-mode" :repo "yoshiki/yaml-mode" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "b153150e0e77b4ec462d741cdb16956c6ae270d6"))
 (jsonian :source "lockfile" :date
          (25731 62334 935705 436000)
          :recipe
          (:package "jsonian" :fetcher github :repo "iwahbe/jsonian" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "3a1d99cd089884a92158cf396e8edc69177f908b"))
 (jq-format :source "lockfile" :date
            (25731 62334 932880 327000)
            :recipe
            (:package "jq-format" :fetcher github :repo "wbolster/emacs-jq-format" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "47e1c5adb89b37b4d53fe01302d8c675913c20e7"))
 (cue-mode :source "lockfile" :date
           (25731 62334 929850 794000)
           :recipe
           (:package "cue-mode" :fetcher github :repo "russell/cue-mode" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "a87ba6748a7a1bebe4431ee8e54e414f0c905141"))
 (dhall-mode :source "lockfile" :date
             (25731 62334 927045 803000)
             :recipe
             (:package "dhall-mode" :repo "psibi/dhall-mode" :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "87ab69fe765d87b3bb1604a306a8c44d6887681d"))
 (nickel-mode :source "lockfile" :date
              (25731 62334 923198 410000)
              :recipe
              (:package "nickel-mode" :repo "nickel-lang/nickel-mode" :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "4b92668564025b18a3d4da47db51d6360cf9da44"))
 (web-mode :source "lockfile" :date
           (25731 62334 920468 801000)
           :recipe
           (:package "web-mode" :repo "fxbois/web-mode" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "57856ba64b9382811b35df0d9ab0a24aede0c1f0"))
 (jinja2-mode :source "lockfile" :date
              (25731 62334 917690 250000)
              :recipe
              (:package "jinja2-mode" :fetcher github :repo "paradoxxxzero/jinja2-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "03e5430a7efe1d163a16beaf3c82c5fd2c2caee1"))
 (rustic :source "lockfile" :date
         (25731 62334 914987 271000)
         :recipe
         (:package "rustic" :repo "brotzeit/rustic" :fetcher github :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref "39423d1cf4fa054c36bf9577356451f4c06ee148"))
 (paredit :source "lockfile" :date
          (25731 62334 912642 797000)
          :recipe
          (:package "paredit" :fetcher git :url "https://mumble.net/~campbell/git/paredit.git" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "9a2c4b37fc8c1c7bdbb1f86fdec874c0d0652e64"))
 (cask-mode :source "lockfile" :date
            (25731 62334 910009 279000)
            :recipe
            (:package "cask-mode" :repo "Wilfred/cask-mode" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "be8b69e55916cf2e78886927f58c7c49b969c0b8"))
 (flycheck-package :source "lockfile" :date
                   (25731 62334 907290 811000)
                   :recipe
                   (:package "flycheck-package" :fetcher github :repo "purcell/flycheck-package" :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                              (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                             :protocol https :inherit t :depth 1 :ref "3a6aaed29ff61418c48c0251e1432c30748ae739"))
 (sly :source "lockfile" :date
      (25731 62334 904649 699000)
      :recipe
      (:package "sly" :repo "joaotavora/sly" :fetcher github :files
                (:defaults "lib" "slynk" "contrib" "doc/images"
                           (:exclude "sly-autoloads.el"))
                :protocol https :inherit t :depth 1 :ref "e6bc13d9f55e3763e6daea527cb88a776c479d8e"))
 (clojure-mode :source "lockfile" :date
               (25731 62334 902022 884000)
               :recipe
               (:package "clojure-mode" :repo "clojure-emacs/clojure-mode" :fetcher github :files
                         ("clojure-mode.el")
                         :protocol https :inherit t :depth 1 :ref "906d6a47a646d1191eaead6f8e1ae0810aa9b626"))
 (cider :source "lockfile" :date
        (25731 62334 899450 391000)
        :recipe
        (:package "cider" :fetcher github :repo "clojure-emacs/cider" :files
                  ("*.el"
                   (:exclude ".dir-locals.el"))
                  :old-names
                  (nrepl)
                  :protocol https :inherit t :depth 1 :ref "ec97c88c46759afd929a415604311a3b2aecb338"))
 (ttl-mode :source "lockfile" :date
           (25731 62334 896563 696000)
           :recipe
           (:package "ttl-mode" :fetcher github :repo "jeeger/ttl-mode" :files
                     ("ttl-mode.el.in")
                     :protocol https :inherit t :depth 1 :type git :flavor melpa :host github :ref "04b86536e0363a78c11ca10ac83096b28fc5fbf0"))
 (flycheck-nimsuggest :source "lockfile" :date
                      (25731 62334 893015 456000)
                      :recipe
                      (:package "flycheck-nimsuggest" :fetcher github :repo "yuutayamada/flycheck-nimsuggest" :files
                                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                                 (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                                :protocol https :inherit t :depth 1 :ref "dc9a5de1cb3ee05db5794d824610959a1f603bc9"))
 (nim-mode :source "lockfile" :date
           (25731 62334 890590 280000)
           :recipe
           (:package "nim-mode" :fetcher github :repo "nim-lang/nim-mode" :old-names
                     (nimrod-mode)
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "744e076f0bea1c5ddc49f92397d9aa98ffa7eff8"))
 (h5dump-mode :source "lockfile" :date
              (25731 62334 888120 330000)
              :recipe
              (:package "h5dump-mode" :fetcher github :repo "berquist/h5dump-mode" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "3c9e4608112da91db76bf316417023bed0422ef3"))
 (apptainer-mode :source "lockfile" :date
                 (25731 62334 885415 348000)
                 :recipe
                 (:protocol https :inherit t :depth 1 :host github :repo "berquist/apptainer-mode" :package "apptainer-mode" :ref "d750ce3b01cae8c02065287f03023a392eaf6a50"))
 (crontab-mode :source "lockfile" :date
               (25731 62334 882499 618000)
               :recipe
               (:package "crontab-mode" :repo "emacs-pe/crontab-mode" :fetcher github :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "7412f3df0958812bfcacd5875a409fa795fa8ecc"))
 (cwl-mode :source "lockfile" :date
           (25731 62334 879877 932000)
           :recipe
           (:package "cwl-mode" :repo "tom-tan/cwl-mode" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "23a333119efaac78453cba95d316109805bd6aec"))
 (dockerfile-mode :source "lockfile" :date
                  (25731 62334 876713 165000)
                  :recipe
                  (:package "dockerfile-mode" :fetcher github :repo "spotify/dockerfile-mode" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                            :protocol https :inherit t :depth 1 :ref "52c6c00da1d31c0b6c29c74335b3af63ed6bf06c"))
 (elixir-mode :source "lockfile" :date
              (25731 62334 873810 941000)
              :recipe
              (:package "elixir-mode" :fetcher github :repo "elixir-editors/emacs-elixir" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "7641373f0563cab67cc5459c34534a8176b5e676"))
 (ess :source "lockfile" :date
      (25731 62334 870847 11000)
      :recipe
      (:package "ess" :repo "emacs-ess/ESS" :fetcher github :files
                ("lisp/*.el" "doc/ess.texi"
                 ("etc" "etc/*")
                 ("obsolete" "lisp/obsolete/*")
                 (:exclude "etc/other"))
                :protocol https :inherit t :depth 1 :ref "5c4ae91cefa5c56fd13b204a9a996825af836a67"))
 (exercism-modern :source "lockfile" :date
                  (25731 62334 868316 266000)
                  :recipe
                  (:protocol https :inherit t :depth 1 :host github :repo "elken/exercism-modern" :files
                             ("*.el" "icons")
                             :package "exercism-modern" :ref "e5b492e188d63ed7e3265ebd84b60d4614149790"))
 (go-mode :source "lockfile" :date
          (25731 62334 865571 839000)
          :recipe
          (:package "go-mode" :repo "dominikh/go-mode.el" :fetcher github :files
                    ("go-mode.el")
                    :protocol https :inherit t :depth 1 :ref "166dfb1e090233c4609a50c2ec9f57f113c1da72"))
 (graphviz-dot-mode :source "lockfile" :date
                    (25731 62334 862977 856000)
                    :recipe
                    (:package "graphviz-dot-mode" :repo "ppareit/graphviz-dot-mode" :fetcher github :files
                              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                              :protocol https :inherit t :depth 1 :ref "8ff793b13707cb511875f56e167ff7f980a31136"))
 (groovy-mode :source "lockfile" :date
              (25731 62334 860226 406000)
              :recipe
              (:package "groovy-mode" :fetcher github :repo "Groovy-Emacs-Modes/groovy-emacs-modes" :files
                        ("*groovy*.el")
                        :protocol https :inherit t :depth 1 :ref "7b8520b2e2d3ab1d62b35c426e17ac25ed0120bb"))
 (jenkinsfile-mode :source "lockfile" :date
                   (25731 62334 857394 865000)
                   :recipe
                   (:package "jenkinsfile-mode" :repo "john2x/jenkinsfile-mode" :fetcher github :files
                             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                              (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                             :protocol https :inherit t :depth 1 :ref "568865ee419e0592de0dd0717d6769a66d9df111"))
 (just-mode :source "lockfile" :date
            (25731 62334 853334 320000)
            :recipe
            (:package "just-mode" :repo "leon-barrett/just-mode.el" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "d7f52eab8fa3828106f80acb1e2176e5877b7191"))
 (lox-mode :source "lockfile" :date
           (25731 62334 850923 872000)
           :recipe
           (:package "lox-mode" :repo "timmyjose-projects/lox-mode" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "b6935b3f5b131d2c1c7685cf6464274f7cd64943"))
 (lua-mode :source "lockfile" :date
           (25731 62334 848529 775000)
           :recipe
           (:package "lua-mode" :repo "immerrr/lua-mode" :fetcher github :files
                     (:defaults
                      (:exclude "init-tryout.el"))
                     :protocol https :inherit t :depth 1 :ref "ad639c62e38a110d8d822c4f914af3e20b40ccc4"))
 (meson-mode :source "lockfile" :date
             (25731 62334 845752 797000)
             :recipe
             (:package "meson-mode" :fetcher github :repo "wentasah/meson-mode" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "82220d12899b87acb3c862b17368f63de7d08d07"))
 (nix-mode :source "lockfile" :date
           (25731 62334 842637 111000)
           :recipe
           (:package "nix-mode" :fetcher github :repo "NixOS/nix-mode" :files
                     (:defaults
                      (:exclude "nix-company.el" "nix-mode-mmm.el"))
                     :protocol https :inherit t :depth 1 :ref "719feb7868fb567ecfe5578f6119892c771ac5e5"))
 (pacfiles-mode :source "lockfile" :date
                (25731 62334 839913 343000)
                :recipe
                (:package "pacfiles-mode" :repo "UndeadKernel/pacfiles-mode" :fetcher github :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "a613d1d88dba4cb293ecaf42a9aeff7d8a3ce8aa"))
 (pdf-tools :source "lockfile" :date
            (25731 62334 836466 33000)
            :recipe
            (:package "pdf-tools" :fetcher github :repo "vedang/pdf-tools" :files
                      (:defaults "README"
                                 ("build" "Makefile")
                                 ("build" "server"))
                      :protocol https :inherit t :depth 1 :ref "7ff6293a25baaae65651b3e1c54b61208279a7ef"))
 (pkgbuild-mode :source "lockfile" :date
                (25731 62334 833523 73000)
                :recipe
                (:package "pkgbuild-mode" :fetcher github :repo "juergenhoetzel/pkgbuild-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "9525be8ecbd3a0d0bc7cc27e6d0f403e111aa067"))
 (snakemake-mode :source "lockfile" :date
                 (25731 62334 829070 741000)
                 :recipe
                 (:package "snakemake-mode" :fetcher github :repo "kyleam/snakemake-mode" :files
                           ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                            (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                           :protocol https :inherit t :depth 1 :ref "0c4c5b6a25735ac025ce124ace9f0259eb5198e9"))
 (systemd :source "lockfile" :date
          (25731 62334 826203 683000)
          :recipe
          (:package "systemd" :fetcher github :repo "holomorph/systemd-mode" :files
                    (:defaults "*.txt")
                    :protocol https :inherit t :depth 1 :ref "8742607120fbc440821acbc351fda1e8e68a8806"))
 (tracwiki-mode :source "lockfile" :date
                (25731 62334 823347 846000)
                :recipe
                (:package "tracwiki-mode" :fetcher github :repo "merickson/tracwiki-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "6a620444d59b438f42383b48cd4c19c03105dba6"))
 (wakatime-mode :source "lockfile" :date
                (25731 62334 819237 969000)
                :recipe
                (:package "wakatime-mode" :fetcher github :repo "wakatime/wakatime-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "ef923829912c3854d230834f81083814b7c9d992"))
 (s :source "lockfile" :date
    (25731 62334 815930 292000)
    :recipe
    (:package "s" :fetcher github :repo "magnars/s.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
              :protocol https :inherit t :depth 1 :ref "dda84d38fffdaf0c9b12837b504b402af910d01d"))
 (f :source "lockfile" :date
    (25731 62334 812752 18000)
    :recipe
    (:package "f" :fetcher github :repo "rejeep/f.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
               (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
              :protocol https :inherit t :depth 1 :ref "af7d37c619010b576fd22b50c62c71ff33093f3c"))
 (elisp-refs :source "lockfile" :date
             (25731 62334 809656 380000)
             :recipe
             (:package "elisp-refs" :repo "Wilfred/elisp-refs" :fetcher github :files
                       (:defaults
                        (:exclude "elisp-refs-bench.el"))
                       :protocol https :inherit t :depth 1 :ref "bf3cca8f74065b1b31036f461e3a093b162311bd"))
 (wgrep :source "lockfile" :date
        (25731 62334 806707 499000)
        :recipe
        (:package "wgrep" :fetcher github :repo "mhayashi1120/Emacs-wgrep" :files
                  ("wgrep.el")
                  :protocol https :inherit t :depth 1 :ref "3132abd3750b8c87cbcf6942db952acfab5edccd"))
 (spinner :source "lockfile" :date
          (25731 62334 803894 813000)
          :recipe
          (:package "spinner" :host github :files
                    ("*"
                     (:exclude ".git"))
                    :repo "emacs-straight/spinner" :protocol https :inherit t :depth 1 :ref "634529bb3173e09b37499f636de70abf29d9fa8a"))
 (ht :source "lockfile" :date
     (25731 62334 800965 989000)
     :recipe
     (:package "ht" :fetcher github :repo "Wilfred/ht.el" :files
               ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
               :protocol https :inherit t :depth 1 :ref "3c1677f1bf2ded2ab07edffb7d17def5d2b5b6f6"))
 (lv :source "lockfile" :date
     (25731 62334 798425 266000)
     :recipe
     (:package "lv" :repo "abo-abo/hydra" :fetcher github :files
               ("lv.el")
               :protocol https :inherit t :depth 1 :ref "317e1de33086637579a7aeb60f77ed0405bf359b"))
 (eldoc :source "lockfile" :date
        (25731 62334 796017 944000)
        :recipe
        (:package "eldoc" :host github :files
                  ("*"
                   (:exclude ".git"))
                  :repo "emacs-straight/eldoc" :protocol https :inherit t :depth 1 :ref "bf2e88dcf00e6554e24b517aa315527011042fae"))
 (load-relative :source "lockfile" :date
                (25731 62334 792888 342000)
                :recipe
                (:package "load-relative" :fetcher github :repo "rocky/emacs-load-relative" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                          :protocol https :inherit t :depth 1 :ref "b7987c265a64435299d6b02f960ed2c894c4a145"))
 (loc-changes :source "lockfile" :date
              (25731 62334 788698 494000)
              :recipe
              (:package "loc-changes" :fetcher github :repo "rocky/emacs-loc-changes" :files
                        ("loc-changes.el")
                        :protocol https :inherit t :depth 1 :ref "622371e432f50626aaac82f8ee2841f71685b0fb"))
 (test-simple :source "lockfile" :date
              (25731 62334 785818 141000)
              :recipe
              (:package "test-simple" :fetcher github :repo "rocky/emacs-test-simple" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "ce6de04636e8d19ec84a475c03c0142b20a63de0"))
 (pkg-info :source "lockfile" :date
           (25731 62334 783063 124000)
           :recipe
           (:package "pkg-info" :repo "emacsorphanage/pkg-info" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "76ba7415480687d05a4353b27fea2ae02b8d9d61"))
 (let-alist :source "lockfile" :date
            (25731 62334 779399 277000)
            :recipe
            (:package "let-alist" :host github :files
                      ("*"
                       (:exclude ".git"))
                      :repo "emacs-straight/let-alist" :protocol https :inherit t :depth 1 :ref "021fc10df2e44faba4728d849ee767cf890aa51a"))
 (epl :source "lockfile" :date
      (25731 62334 776554 361000)
      :recipe
      (:package "epl" :repo "cask/epl" :fetcher github :files
                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                 (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                :protocol https :inherit t :depth 1 :ref "78ab7a85c08222cd15582a298a364774e3282ce6"))
 (hydra :source "lockfile" :date
        (25731 62334 772864 454000)
        :recipe
        (:package "hydra" :repo "abo-abo/hydra" :fetcher github :files
                  (:defaults
                   (:exclude "lv.el"))
                  :protocol https :inherit t :depth 1 :ref "317e1de33086637579a7aeb60f77ed0405bf359b"))
 (with-editor :source "lockfile" :date
   (25731 62334 768937 481000)
   :recipe
   (:package "with-editor" :fetcher github :repo "magit/with-editor" :files
             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
              (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
             :protocol https :inherit t :depth 1 :ref "9e437353ee817b8e6a9ffce53e37fe5a6fcb4294"))
 (magit-section :source "lockfile" :date
                (25731 62334 764541 926000)
                :recipe
                (:package "magit-section" :fetcher github :repo "magit/magit" :files
                          ("lisp/magit-section.el" "lisp/magit-section-pkg.el" "docs/magit-section.texi" "Documentation/magit-section.texi")
                          :protocol https :inherit t :depth 1 :ref "508041d0842467d173c587cb02b326f93838f99d"))
 (ace-window :source "lockfile" :date
             (25731 62334 761087 91000)
             :recipe
             (:package "ace-window" :repo "abo-abo/ace-window" :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                       :protocol https :inherit t :depth 1 :ref "77115afc1b0b9f633084cf7479c767988106c196"))
 (avy :source "lockfile" :date
      (25731 62334 757014 694000)
      :recipe
      (:package "avy" :repo "abo-abo/avy" :fetcher github :files
                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                 (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                :protocol https :inherit t :depth 1 :ref "be612110cb116a38b8603df367942e2bb3d9bdbe"))
 (clang-format :source "lockfile" :date
               (25731 62334 753211 374000)
               :recipe
               (:package "clang-format" :fetcher github :repo "emacsmirror/clang-format" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                         :protocol https :inherit t :depth 1 :ref "e48ff8ae18dc7ab6118c1f6752deb48cb1fc83ac"))
 (reformatter :source "lockfile" :date
              (25731 62334 748459 258000)
              :recipe
              (:package "reformatter" :repo "purcell/emacs-reformatter" :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "f454b179ab7d39dc8783b9f2a046cab353b272f5"))
 (pythonic :source "lockfile" :date
           (25731 62334 745250 497000)
           :recipe
           (:package "pythonic" :fetcher github :repo "pythonic-emacs/pythonic" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "c18a5bd8cb2ba59014b6b29b5bf1903bd2476a07"))
 (rust-mode :source "lockfile" :date
            (25731 62334 741125 471000)
            :recipe
            (:package "rust-mode" :repo "rust-lang/rust-mode" :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "e443ccf2884028d3b6cc550ff20e7c92dadccb68"))
 (xterm-color :source "lockfile" :date
              (25731 62334 737016 575000)
              :recipe
              (:package "xterm-color" :repo "atomontage/xterm-color" :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                        :protocol https :inherit t :depth 1 :ref "2ad407c651e90fff2ea85d17bf074cee2c022912"))
 (package-lint :source "lockfile" :date
               (25731 62334 734173 192000)
               :recipe
               (:package "package-lint" :fetcher github :repo "purcell/package-lint" :files
                         (:defaults "data"
                                    (:exclude "*flymake.el"))
                         :protocol https :inherit t :depth 1 :ref "2892058fba1f36efd85f6c0d007b40621ab5c68e"))
 (parseedn :source "lockfile" :date
           (25731 62334 729979 777000)
           :recipe
           (:package "parseedn" :repo "clojure-emacs/parseedn" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "a09686fbb9113b8b1b4f20c9e1dc0d6fea01a64f"))
 (queue :source "lockfile" :date
        (25731 62334 726129 368000)
        :recipe
        (:package "queue" :host github :files
                  ("*"
                   (:exclude ".git"))
                  :repo "emacs-straight/queue" :protocol https :inherit t :depth 1 :ref "130c2d656cd5d7376552272fab9e50a7c37d0c4a"))
 (sesman :source "lockfile" :date
         (25731 62334 721992 520000)
         :recipe
         (:package "sesman" :repo "vspinu/sesman" :fetcher github :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                   :protocol https :inherit t :depth 1 :ref "e0f555f963c9f02f8e4a50e06fc353eb4c15ee77"))
 (parseclj :source "lockfile" :date
           (25731 62334 717887 642000)
           :recipe
           (:package "parseclj" :repo "clojure-emacs/parseclj" :fetcher github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                     :protocol https :inherit t :depth 1 :ref "4d0e780e00f1828b00c43099e6eebc6582998f72"))
 (epc :source "lockfile" :date
      (25731 62334 713424 710000)
      :recipe
      (:package "epc" :repo "kiwanami/emacs-epc" :fetcher github :files
                ("epc.el" "epcs.el")
                :protocol https :inherit t :depth 1 :ref "e1bfa5ca163273859336e3cc89b4b6460f7f8cda"))
 (commenter :source "lockfile" :date
            (25731 62334 709221 737000)
            :recipe
            (:package "commenter" :fetcher github :repo "yuutayamada/commenter" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                      :protocol https :inherit t :depth 1 :ref "6d1885419434ba779270c6fda0e30d390bb074bd"))
 (concurrent :source "lockfile" :date
             (25731 62334 705676 964000)
             :recipe
             (:package "concurrent" :repo "kiwanami/emacs-deferred" :fetcher github :files
                       ("concurrent.el")
                       :protocol https :inherit t :depth 1 :ref "2239671d94b38d92e9b28d4e12fd79814cfb9c16"))
 (ctable :source "lockfile" :date
         (25731 62334 702795 559000)
         :recipe
         (:package "ctable" :repo "kiwanami/emacs-ctable" :fetcher github :files
                   ("ctable.el")
                   :protocol https :inherit t :depth 1 :ref "48b73742757a3ae5736d825fe49e00034cc453b5"))
 (deferred :source "lockfile" :date
           (25731 62334 697586 893000)
           :recipe
           (:package "deferred" :repo "kiwanami/emacs-deferred" :fetcher github :files
                     ("deferred.el")
                     :protocol https :inherit t :depth 1 :ref "2239671d94b38d92e9b28d4e12fd79814cfb9c16"))
 (request :source "lockfile" :date
   (25731 62334 693547 538000)
   :recipe
   (:package "request" :repo "tkf/emacs-request" :fetcher github :files
             ("request.el")
             :protocol https :inherit t :depth 1 :ref "01e338c335c07e4407239619e57361944a82cb8a"))
 (async :source "lockfile" :date
        (25731 62334 688726 482000)
        :recipe
        (:package "async" :repo "jwiegley/emacs-async" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                  :protocol https :inherit t :depth 1 :ref "3ae74c0a4ba223ba373e0cb636c385e08d8838be"))
 (tablist :source "lockfile" :date
          (25731 62334 684287 425000)
          :recipe
          (:package "tablist" :fetcher github :repo "emacsorphanage/tablist" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "5f7b71a92bfb25418d7da86ad9c45f14b149496f"))
 (xml-rpc :source "lockfile" :date
          (25731 62334 679241 685000)
          :recipe
          (:package "xml-rpc" :fetcher github :repo "xml-rpc-el/xml-rpc-el" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el" "*-test.el" "*-tests.el" "LICENSE" "README*" "*-pkg.el"))
                    :protocol https :inherit t :depth 1 :ref "8272789df8a4deab4de7d50e63b73b7d0543bc7f")))
