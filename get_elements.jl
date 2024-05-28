function get_elements(filename::nothing,dims::Int64)
    using Gmsh:gmsh
    if filename!=nothing
        gmsh.open(filename)
    end
    elementTypes, ElementTags, ele_nodeTags= gmsh.model.mesh.get_elements(dims)
    elementList=reshape_elements(elementTypes, ElementTags, ele_nodeTags)
    return elementList
end
