# Adapted from https://discourse.julialang.org/t/what-is-in-your-startup-jl/18228

import Pkg
let
    pkgs = [
        "Debugger",
        "Revise",
        "OhMyREPL",
        "PkgTemplates"
    ]
    for pkg in pkgs
        if Base.find_package(pkg) === nothing
            Pkg.add(pkg)
        end
    end
end

using Revise
using OhMyREPL
# TODO how to only have this in REPL?
using PkgTemplates

#atreplinit() do repl
template = Template(;
                    dir="~/development/julia",
                    plugins=[
                        License(; name="BSD3"),
                        Git(; ssh=true),
                        GitHubActions(),
                        Codecov(),
                        Coveralls(),
                        Documenter{GitHubActions}(),
                    ],
                    )
#end
