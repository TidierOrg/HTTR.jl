module TestHTTR

using HTTR
using Test
using Documenter

DocMeta.setdocmeta!(HTTR, :DocTestSetup, :(using HTTR); recursive=true)

doctest(HTTR)

end