class Setup < ActiveRecord::Base
  belongs_to :item, :class_name => 'Item', :foreign_key => 'symbol', :primary_key => 'symbol'
  belongs_to :pattern_object, :class_name => 'Pattern', :foreign_key => 'pattern', :primary_key => 'name'

  def to_param
    "#{slug}"
  end

  def create_method(name, &block)
    self.class.send(:define_method, name, &block)
  end

  def create_attr(name)
    create_method("#{name}=".to_sym) { |val| instance_variable_set( "@" + name, val) }

    create_method(name.to_sym) { instance_variable_get( "@" + name ) }
  end
end
