# nodesList with tags and coordinates=trans_nodes(argument)
# This function will reshape nodes' coordinates and tags from Gmsh
# and sort the nodes and tags in ascending order
# MiaoZhang 2024.05.27 
function reshape_nodes(nodetags::Vector{UInt64} , nodeCoords::Vector{Float64})

    coord_reshaped = reshape(nodeCoords,(3,size(nodetags,1))) 
    nodestags_reshaped = reshape(nodetags,(1,size(nodetags,1)))
    Nodestagscoord = vcat(nodestags_reshaped,coord_reshaped)
    nodesList=sortslices(Nodestagscoord,dims=2,by=x->x[1])
    
    return nodesList
end

