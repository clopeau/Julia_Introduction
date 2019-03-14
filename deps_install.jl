using Pkg

function install_deps()
   io = open("REQUIRE", "r")
   deps = read(io, String)
   
   for dep in split(deps)
      Pkg.add(String(dep))
   end
end

install_deps()
