class ListArray
  
  # Largely reinventing Array functions but trying to demonstrate inheritance

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
    return  @contents.include?(search_element)
  end

end