# elementtags,nodetags=reshape_elements(elementTypes,elementsTags,nodeTags)
# This function will reshape elements' tags and node tags from Gmsh
# and sort the nodestags and elementtags in ascending order
# MiaoZhang 2024.05.27 
# 
function reshape_elements(elementTypes::Int64, elementTags::Int64, nodeTags::Int64)
    cal_nnodes_1_ele(elementTypes)
    nodeTags_reshaped = reshape(nodeTags,(elementTypes,size(elementTags,1))) 
    elementTags_reshaped = reshape(elementTags,(1,size(elementTags,1)))
    elementList = hcat(nodestags_reshaped,coord_reshaped)
    elementList =sortslices(elementList,dims=2,by=x->x[1])

    return elementList
end




