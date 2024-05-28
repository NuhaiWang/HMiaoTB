# Calculate the nodes in single element from Gmsh.
# Defination of element types are same with Gmsh.
# Defination: https://gitlab.onelab.info/gmsh/gmsh/blob/master/src/common/GmshDefines.h
# Must initialize() Gmsh before use this function.
# MiaoZhang 2024.05.28
function cal_nnodes_1_ele(elementType)
    elementType=elementType[1,1]
    node_1 = [15]
    node_2 = [1]
    node_3 = [2]
    node_4 = [3 4 26]
    node_5 = [7 27]
    node_6 = [6 9 10 28]
    node_8 = [5 16]
    node_9 = [20 ]
    node_10 = [11 21]
    node_12 = [22 ]
    node_13 = [19 ]
    node_14 = [14 ]
    node_15 = [18 23 24]
    node_18 = [13 ]
    node_20 = [17 29]
    node_21 = [25]
    node_27 = [12 ]
    if elementType in node_1
        nnodes_1_ele=1
    elseif elementType in node_2
        nnodes_1_ele=2
    elseif elementType in node_3
        nnodes_1_ele=3
    elseif elementType in node_4
        nnodes_1_ele=4
    elseif elementType in node_5
        nnodes_1_ele=5
    elseif elementType in node_6
        nnodes_1_ele=6
    elseif elementType in node_8
        nnodes_1_ele=8
    elseif elementType in node_9
        nnodes_1_ele=9
    elseif elementType in node_10
        nnodes_1_ele=10
    elseif elementType in node_12
        nnodes_1_ele=12
    elseif elementType in node_13
        nnodes_1_ele=13
    elseif elementType in node_14
        nnodes_1_ele=14
    elseif elementType in node_15
        nnodes_1_ele=15
    elseif elementType in node_18
        nnodes_1_ele=18
    elseif elementType in node_20
        nnodes_1_ele=20
    elseif elementType in node_21
        nnodes_1_ele=21
    elseif elementType in node_27
        nnodes_1_ele=27
    end
    return nnodes_1_ele
end
