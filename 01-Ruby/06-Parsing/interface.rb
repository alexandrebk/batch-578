require 'pry'
require_relative 'methods'

# > Welcome to your Christmas gift list
# > Which action [list|add|delete|quit]?
# > list
# > TODO: list items
# > Which action [list|add|delete|quit]?
# > add
# > TODO: ask user an item and add it to gift list
# > Which action [list|add|delete|quit]?
# > delete
# > TODO: ask user the index of item to delete and delete it
# > Which action [list|add|delete|quit]?
# > quit
# > Goodbye

GIFT_LIST = load_csv

# gift = {
#     name: 'macbook',
#     bought: false,
#     # price: 1000
# }

def list
  if GIFT_LIST.empty?
  # Message custom si liste vide
    puts "Pas encore de cadeau dans la liste."
  else
  # Itérer sur les éléments de la liste
  # Afficher dans le terminal (index + nom)
    GIFT_LIST.each_with_index do |gift, index|
      checked = if gift[:bought]
                  "X"
                else
                  " "
                end
      # equivalent à checked = gift[:bought] ? "X" : " "

      puts "#{index + 1} - [#{checked}] #{gift[:name]}"
    end
  end
end

def add
  # Demander à l'utilisateur son produit
  puts "Quel cadeau voulez-vous ajouter?"
  # Récupérer la valeur entrée
  gift_name = gets.chomp.capitalize
  # Ajouter la valeur à la gift_list
  GIFT_LIST << { name: gift_name, bought: false }
  save_csv(GIFT_LIST)
  # Confirmer l'ajout ou afficher la liste à jour
  puts "#{gift_name} a bien été ajouté à la gift list"
  list
end

def delete
  # Afficher liste (avec index)
  list
  # Demander l'index du produit à supprimer
  puts "Veuillez entrer le numéro du cadeau à retirer de la liste."
  # récupérer l'index (sous forme de Integer)
  gift_index = gets.chomp.to_i - 1 # (entre 1 et ...)
  # Supprimer
  gift = GIFT_LIST.delete_at(gift_index)
  save_csv(GIFT_LIST)
  # Confirmer la bonne suppression du produit
  puts "#{gift[:name]} a bien été retiré de la liste de cadeaux"
  # Afficher la liste à jour
  list
end

def mark
  list
  # Demander l'index du produit à supprimer
  puts "Veuillez entrer le numéro du cadeau à cocher."
  # récupérer l'index (sous forme de Integer)
  gift_index = gets.chomp.to_i - 1 # (entre 0 et ...)
  # identifier le gift ciblé
  gift = GIFT_LIST[gift_index] # => { name: "Skate", bought: false }
  # modifier l'état "bought"
  gift[:bought] = true
  save_csv(GIFT_LIST)
  # confirmer la modification à l'utilisateur
  puts "#{gift[:name]} a bien été coché."
  # afficher la liste
  list
end

def idea
  puts "Que voulez-vous chercher sur Etsy?"
  article = gets.chomp
  etsy_results = scraper_etsy(article)
  # Itérer sur les éléments de la liste
  # Afficher dans le terminal (index + nom)
  etsy_results.each_with_index do |etsy_item, index|
    puts "#{index + 1} - #{etsy_item}"
  end

  puts "Veuillez entrer le numéro du cadeau à ajouter à votre liste."
  # récupérer l'index (sous forme de Integer)
  gift_index = gets.chomp.to_i - 1 # (entre 0 et ...)

  gift_name = etsy_results[gift_index]
  GIFT_LIST << { name: gift_name, bought: false }
  save_csv(GIFT_LIST)
  # Confirmer l'ajout ou afficher la liste à jour
  puts "#{gift_name} a bien été ajouté à la gift list"
end


# Dire bonjour, et bienvenue sur l'application
puts "Bonjour, bienvenue sur l'application Christmas Gift list."
# Afficher le menu de choix des actions

user_choice = ''

until user_choice == 'quit'
  puts "Veuillez choisir une action [list|add|mark|idea|delete|quit]"
  # Demander l'action du user, et la mettre dans une variable
  user_choice = gets.chomp
  # Gestion des erreurs, afficher message d'erreur et reboucler
  # Sinon quitter, ou router vers la bonne action

  case user_choice
  when 'list'   then list
  when 'add'    then add
  when 'mark'   then mark
  when 'idea'   then idea
  when 'delete' then delete
  when 'quit'   then puts "Au revoir"
  else
    puts "Cette action est invalide."
  end
end

# dans le bloc de la methode search
# creer scraper local: et lister les 4 premiers resultats (avec numeros)
# dans le terminal

# une fois que ça marche

# demander a l'utilisateur son mot clé de recherche
# on modifie le scraper pour qu'il aille chercher le resultat sur le site

# demander un numero à l'utilisateur
# creer un gift dont le nom correspond au resultat de recherche correspondant
