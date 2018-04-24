require './builder'

builder = Builder.new('blah.tf').provider('aws').build
