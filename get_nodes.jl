function get_nodes(filename::nothing)
    using Gmsh:gmsh
    if filename!=nothing
        gmsh.open(filename)
    end
    nodetags, coord, parametricCoord = gmsh.model.mesh.getNodes()
    nodesList=reshape_nodes(nodetags,coord)
    return nodesList
end

