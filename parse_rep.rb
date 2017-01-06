require 'json'
require 'ostruct'

tiger = JSON.parse(File.read('./examples/zoo/representations/tiger.json'), object_class: OpenStruct)
p tiger.affordances.map(&:name).zip(tiger.affordances.map(&:return_type))
