require 'csv'
#require 'byebug'
class Gossip
	attr_accessor :autor, :content, :id

	def initialize(autor, content)
		@autor = autor
		@content = content
		@id = id
	end

	def save
		CSV.open("./db/gossip.csv", "ab") do |csv|
    	csv << [@autor, @content]
    	end
	end

	def self.all
  		all_gossips = [] #on initialise un array vide

  		CSV.read("./db/gossip.csv").each do |csv_line|
    	all_gossips << Gossip.new(csv_line[0], csv_line[1])
    	end

  		return all_gossips #on retourne un array rempli d'objets Gossip
	end

	def self.find(id)
  		gossips = []   # permet de stocker la ligne csv demandée
  		CSV.read("./db/gossip.csv").each_with_index do |row, index|
    		if (id == index+1)          # cherche et check si l'index est égale id demandé
     		 gossips << Gossip.new(row[0], row[1])    # si trouvé, ajout dans array et break pour retourner l'array
		      break
		        end
    		end
      return gossips
  end
	#byebug
end#class