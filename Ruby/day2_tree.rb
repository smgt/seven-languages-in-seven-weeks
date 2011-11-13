#!/usr/bin/env ruby

class Tree

  attr_accessor :children, :node_name

  def initialize(data)
    @children = []
    @node_name = "root"
    if data.length == 1
      @node_name = data.keys.first
      data[@node_name].each do |k,v|
        @children << Tree.new( {k =>  v} )
      end
    else
      puts "many"
      data.each do |k, v|
        @children << Tree.new( {k =>  v} )
      end
    end

  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end



t = Tree.new( {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } } )

t.visit_all do |node|
  puts "Visiting #{node.node_name}"
end
