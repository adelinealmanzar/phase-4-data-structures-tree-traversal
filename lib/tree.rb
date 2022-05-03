class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      current = nodes_to_visit.pop
      if current[:id] === id
        return current
      end

      nodes_to_visit = nodes_to_visit + current[:children]
    end

    nil
  end


  # recursive version of depth first
  def depth_first_traversal(node, result=[])
    result.push(node[:value])
    node[:children].each do |child|
      depth_first_traversal(child, result)
    end
  end
end