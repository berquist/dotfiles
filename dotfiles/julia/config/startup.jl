# Adapted from https://discourse.julialang.org/t/what-is-in-your-startup-jl/18228

import Pkg as var"#Pkg" # Don't import globally

@async let
    pkgs = [
        # "AbbreviatedStackTraces",
        "Debugger",
        "Revise",
        "OhMyREPL",
        "PkgTemplates"
    ]
    for pkg in pkgs
        if isnothing(Base.find_package(pkg))
            var"#Pkg".add(pkg)
        end
    end
    @eval using Revise
    for pkg in pkgs
        Core.eval(Main, :(using $(Symbol(pkg))))
    end
end

function template()
    @eval begin
        using PkgTemplates
        Template(;
            dir="~/development/julia",
            plugins=[
                Tests(; aqua=true),
                License(; name="BSD3"),
                Git(;
                    manifest=true,
                    ssh=true
                ),
                CompatHelper(),
                TagBot(),
                GitHubActions(;
                    osx=true,
                    windows=true,
                    extra_versions=["1.6", "1.9", "nightly"],
                ),
                Codecov(),
                Coveralls(),
                Documenter{GitHubActions}(),
                BlueStyleBadge(),
                ColPracBadge(),
                PkgEvalBadge(),
                Dependabot(),
                Citation(),
                RegisterAction(),
            ],
        )
    end
end
