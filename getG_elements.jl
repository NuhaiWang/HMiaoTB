function getG_elements(dim,filename = 0)
    if filename != 0
        gmsh.open(filename)
    end
    elementTypes, ElementTags, ele_nodeTags= gmsh.model.mesh.get_elements(dim)
    elementList=reshape_elements(elementTypes, ElementTags, ele_nodeTags)
    return elementList
end
