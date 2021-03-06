###################
# LabeledGraphs
# Contributors: Matthew Reyna, Youn Kim
###################

module LabeledGraphs
    
	importall Graphs

    export
        AbstractGraph,

        # concept checking
        implements_vertex_list,
        implements_edge_list,
        implements_vertex_map,
        implements_edge_map,
        implements_adjacency_list,
        implements_incidence_list,
        implements_bidirectional_adjacency_list,
        implements_bidirectional_incidence_list,
        implements_adjacency_matrix,
        @graph_implements, @graph_requires,

        # common
        make_vertex, make_edge,
        vertex_type, edge_type, source, target, revedge,
        is_directed, is_mutable, vertex_index, edge_index,
        num_vertices, vertices, num_edges, edges,
        out_degree, out_neighbors, out_edges,
        in_degree, in_neighbors, in_edges,
        attributes,

        KeyVertex, Edge, WeightedEdge, ExVertex, ExEdge, AttributeDict,
        collect_edges, collect_weighted_edges,

        add_edge!, add_vertex!, add_edges!, add_vertices!, remove_edge!, remove_vertex!, set_edge!,

        AbstractEdgePropertyInspector, VectorEdgePropertyInspector,
        ConstantEdgePropertyInspector, AttributeEdgePropertyInspector,
        edge_property, edge_property_requirement,

        # edge_list
        GenericEdgeList, EdgeList, simple_edgelist, edgelist,

        # adjacency_list
        GenericAdjacencyList, SimpleAdjacencyList, AdjacencyList,
        simple_adjlist, adjlist,

        # incidence_list
        GenericIncidenceList, SimpleIncidenceList, VectorIncidenceList, IncidenceList,
        simple_inclist, inclist,

        # graph
        GenericGraph, SimpleGraph, Graph, simple_graph, graph,

        # gmatrix
        adjacency_matrix, weight_matrix, distance_matrix, laplacian_matrix,
        adjacency_matrix_sparse, weight_matrix_sparse, laplacian_matrix_sparse,
        sparse2adjacencylist,

        # labeled_graph
        LabeledGraph,
        add_edge_property!,
        set_edge_property!,
        get_edge_property,

        # Multi graph
        MultiGraph,
        laplacian_matrix,
        num_arborescence,
        graph_adjacency,
	edge_multiplicity,
        
        # graph_visit
        AbstractGraphVisitor, TrivialGraphVisitor, LogGraphVisitor,
        discover_vertex!, open_vertex!, close_vertex!,
        examine_neighbor!, examine_edge!,
        visited_vertices, traverse_graph, traverse_graph_withlog,

        # breadth_first_visit
        BreadthFirst, gdistances, gdistances!,

        # depth_first_visit
        DepthFirst, test_cyclic_by_dfs, topological_sort_by_dfs,

        # connected_components
        connected_components, strongly_connected_components,

        # cliques
        maximal_cliques,

        # dijkstra_spath
        DijkstraStates, create_dijkstra_states, AbstractDijkstraVisitor,
        dijkstra_shortest_paths!, dijkstra_shortest_paths,
        dijkstra_shortest_paths_withlog,

        # bellmanford
        BellmanFordStates, create_bellman_ford_states, NegativeCycleError, 
        bellman_ford_shortest_paths!, bellman_ford_shortest_paths,
        has_negative_edge_cycle,

        # a_star_spath
        shortest_path,

        # prim_mst
        PrimStates, create_prim_states, AbstractPrimVisitor,
        prim_minimum_spantree!, prim_minimum_spantree, prim_minimum_spantree_withlog,

        # kruskal_mst
        kruskal_select, kruskal_minimum_spantree,

        # floyd_warshall
        floyd_warshall!, floyd_warshall,

        # Graphviz
        to_dot, plot,
        from_dot,

        # Random Graph Generation
        erdos_renyi_graph, watts_strogatz_graph

    
    include("labeledgraph.jl")
    include("multigraph.jl")
    include("dot.jl")

    
end