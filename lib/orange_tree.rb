class Orange_tree
attr_accessor :orange_count, :height

def initialize
  @orange_count = 50
  @height  = 1
end

def pick_an_orange
  @orange_count -= 1
end

def water
  @orange_count += 1
end
end 
