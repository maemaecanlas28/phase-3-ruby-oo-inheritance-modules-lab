module Findable
    def find_by_name(name)
        self.all.detect{|a| a.name == name}
    end
end

 #class method => because it starts w/ self 
  # def self.find_by_name(name)
  #   #returns the first element which satisfies 
  #   #the given condition in the block
  #   @@artists.detect{|a| a.name == name}
  # end