# elementtags,nodetags=reshape_elements(elementTypes,elementsTags,nodeTags)
# This function will reshape elements' tags and node tags from Gmsh
# and sort the nodestags and elementtags in ascending order
# MiaoZhang 2024.05.27 
# 
function reshape_elements(elementTypes, elementTags, nodeTags)
    nnodes_1_ele=cal_nnodes_1_ele(elementTypes)
    elementTags=elementTags[1,1]
    nodeTags=nodeTags[1,1]
    nodeTags_reshaped = reshape(nodeTags,(nnodes_1_ele,size(elementTags,1))) 
    elementTags_reshaped = reshape(elementTags,(1,size(elementTags,1)))
    elementList = vcat(elementTags_reshaped,nodeTags_reshaped)
    elementList =sortslices(elementList,dims=2,by=x->x[1])

    return elementList
end
