
module Memorable 

    #nesting modules
    module ClassMethods
        def reset_all
            self.all.clear
        end

        def count 
            self.all.count
        end
    end

    #nesting modules
    module InstanceMethods
        def initialize
            self.class.all << self #pushes the new artist into the class attribute artist array
        end
    end
end

#class method; clears the @@artists array
  # def self.reset_all
  #   # refers to @@artists = self.all(.clear)
  #   self.all.clear
  # end

  # #class method; counts how many artists are there in the @@artists array
  # def self.count
  #   # refers to @@artists = self.all(.count)
  #   self.all.count
  # end