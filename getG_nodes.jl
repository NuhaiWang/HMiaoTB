function getG_nodes(filename = 0)
    if filename != 0
        gmsh.open(filename)
    end
    nodetags, coord, parametricCoord = gmsh.model.mesh.getNodes()
    nodesList=reshape_nodes(nodetags,coord)
    return nodesList
end

