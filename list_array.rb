class ListArray
  
  attr_reader :contents
  
  def initialize()
    @contents = []
  end

  def add_element_to_list(an_object)
    @contents << an_object
  end

  def add_list_to_list(a_list)
    @contents.concat(a_list)
  end

  def empty_list()
    return_list = @contents
    @contents = []
    return return_list
  end

  def contains?(search_element)
    return true if @contents.find(search_element)
    return false
  end

end