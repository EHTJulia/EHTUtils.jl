using EHTUtils
using Documenter

DocMeta.setdocmeta!(EHTUtils, :DocTestSetup, :(using EHTUtils); recursive=true)

makedocs(;
    modules=[EHTUtils],
    authors="Kazu Akiyama",
    repo="https://github.com/EHTJulia/EHTUtils.jl/blob/{commit}{path}#{line}",
    sitename="EHTUtils.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://EHTJulia.github.io/EHTUtils.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/EHTJulia/EHTUtils.jl",
    devbranch="main",
)
