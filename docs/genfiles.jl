using Documenter, DocumenterMarkdown, Literate

function get_example_path(p)
    return joinpath(@__DIR__, ".", "examples", p)
end

function getfiles()
    srcsfiles = []
    for folder in readdir(joinpath(@__DIR__, ".", "examples"))
        names = readdir(joinpath(@__DIR__, ".", "examples", folder))
        fpaths = "$(folder)/" .* names
        srcsfiles = vcat(srcsfiles, fpaths...)
    end

    return srcsfiles
end

for (d, paths) in ("tutorial", getfiles())
    for path in paths
        Literate.markdown(
            get_example_path(path), 
            joinpath(@__DIR__, "src", "examples", "generated", dirname(path)),
            documenter=true
        )
    end
end