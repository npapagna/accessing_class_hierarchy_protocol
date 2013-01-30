module AccessingClassHierarchyProtocol

  def all_subclasses
    ObjectSpace.each_object(Module).select { |klass| klass < self }
  end

  def all_concrete_subclasses
    all_subclasses.select &:is_concrete?
  end

  def is_concrete?
    all_subclasses.empty?
  end

end