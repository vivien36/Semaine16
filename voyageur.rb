villes = [
 ["Paris", 48.856578, 2.351828],
 ["Nantes", 47.21806, -1.55278],
 ["Lyon", 45.759723, 4.842223], 
 ["Bruxelles", 50.846667, 4.3525],
 ["Bordeaux", 44.837912, -0.579541],
 ["Toulouse", 43.604482, 1.443962],
 ["Montpellier", 43.611944, 3.877222],
 ["Marseille", 43.296346, 5.369889],
 ["Tours", 47.393611, 0.689167], 
 ["Lille", 50.637222, 3.063333],
 ["Strasbourg", 48.573392, 7.752353]
]
#INFO : rayon de la terre = 6371km. Soit un périmètre de P = 2*PI*r = 40030.17km. Soit, pour un degré a = P/360 = 111.16km.
#J'ai commencé à calculer mes distances grâce au théorème de pythagore mais dans un système non euclidien ( oui,la terre est ronde ^^)les résultats étaient érroné.

#demmande d'intervention de l'utilisateur pour eviter la fermeture du programme dans une console classique
puts "Le programme va boucler 500.000 fois,laisser lui le temps..."

puts ""
puts "APPUYER UNE TOUCHE POUR COMMENCER"
choix = gets.chomp

compteur = 0
plusPetit = 50000
	

while (compteur <= 500000)
  
#Distance entre les 2 premières villes du tableau
	km1et2=Math.acos(Math.sin(villes [0][1]*Math::PI/180)*Math.sin(villes [1][1]*Math::PI/180) + Math.cos(villes [0][1]*Math::PI/180)*Math.cos(villes [1][1]*Math::PI/180)*Math.cos(villes [1][2]*Math::PI/180-villes [0][2]*Math::PI/180) ) * 6371
	
#Distance entre la 2ème et 3ème ville du tableau
	km2et3=Math.acos(Math.sin(villes [1][1]*Math::PI/180)*Math.sin(villes [2][1]*Math::PI/180) + Math.cos(villes [1][1]*Math::PI/180)*Math.cos(villes [2][1]*Math::PI/180)*Math.cos(villes [2][2]*Math::PI/180-villes [1][2]*Math::PI/180) ) * 6371
	
#Distance entre la 3ème et 4ème ville du tableau
	km3et4=Math.acos(Math.sin(villes [2][1]*Math::PI/180)*Math.sin(villes [3][1]*Math::PI/180) + Math.cos(villes [2][1]*Math::PI/180)*Math.cos(villes [3][1]*Math::PI/180)*Math.cos(villes [3][2]*Math::PI/180-villes [2][2]*Math::PI/180) ) * 6371
	
#Distance entre la 4ème et 5ème ville du tableau
	km4et5=Math.acos(Math.sin(villes [3][1]*Math::PI/180)*Math.sin(villes [4][1]*Math::PI/180) + Math.cos(villes [3][1]*Math::PI/180)*Math.cos(villes [4][1]*Math::PI/180)*Math.cos(villes [4][2]*Math::PI/180-villes [3][2]*Math::PI/180) ) * 6371
	
#Distance entre la 5ème et 6ème ville du tableau
	km5et6=Math.acos(Math.sin(villes [4][1]*Math::PI/180)*Math.sin(villes [5][1]*Math::PI/180) + Math.cos(villes [4][1]*Math::PI/180)*Math.cos(villes [5][1]*Math::PI/180)*Math.cos(villes [5][2]*Math::PI/180-villes [4][2]*Math::PI/180) ) * 6371
	
#Distance entre la 6ème et 7ème ville du tableau
	km6et7=Math.acos(Math.sin(villes [5][1]*Math::PI/180)*Math.sin(villes [6][1]*Math::PI/180) + Math.cos(villes [5][1]*Math::PI/180)*Math.cos(villes [6][1]*Math::PI/180)*Math.cos(villes [6][2]*Math::PI/180-villes [5][2]*Math::PI/180) ) * 6371
	
#Distance entre la 6ème et 8ème ville du tableau
	km7et8=Math.acos(Math.sin(villes [6][1]*Math::PI/180)*Math.sin(villes [7][1]*Math::PI/180) + Math.cos(villes [6][1]*Math::PI/180)*Math.cos(villes [7][1]*Math::PI/180)*Math.cos(villes [7][2]*Math::PI/180-villes [6][2]*Math::PI/180) ) * 6371
	
#Distance entre la 8ème et 9ème ville du tableau
	km8et9=Math.acos(Math.sin(villes [7][1]*Math::PI/180)*Math.sin(villes [8][1]*Math::PI/180) + Math.cos(villes [7][1]*Math::PI/180)*Math.cos(villes [8][1]*Math::PI/180)*Math.cos(villes [8][2]*Math::PI/180-villes [7][2]*Math::PI/180) ) * 6371
	
#Distance entre la 9ème et 10ème ville du tableau
	km9et10=Math.acos(Math.sin(villes [8][1]*Math::PI/180)*Math.sin(villes [9][1]*Math::PI/180) + Math.cos(villes [8][1]*Math::PI/180)*Math.cos(villes [9][1]*Math::PI/180)*Math.cos(villes [9][2]*Math::PI/180-villes [8][2]*Math::PI/180) ) * 6371
	
#Distance entre la 10ème et 11ème ville du tableau
	km10et11=Math.acos(Math.sin(villes [9][1]*Math::PI/180)*Math.sin(villes [10][1]*Math::PI/180) + Math.cos(villes [9][1]*Math::PI/180)*Math.cos(villes [10][1]*Math::PI/180)*Math.cos(villes [10][2]*Math::PI/180-villes [9][2]*Math::PI/180) ) * 6371
	
#Distance entre la 11ème et 1ère ville du tableau
	km11et1=Math.acos(Math.sin(villes [10][1]*Math::PI/180)*Math.sin(villes [0][1]*Math::PI/180) + Math.cos(villes [10][1]*Math::PI/180)*Math.cos(villes [0][1]*Math::PI/180)*Math.cos(villes [0][2]*Math::PI/180-villes [10][2]*Math::PI/180) ) * 6371
	
	
#calcul de la distance totale dans l'ordre du tableau
	distanceT= km1et2 + km2et3 + km3et4 + km4et5 + km5et6 + km6et7 + km7et8 + km8et9 + km9et10 + km10et11 + km11et1
	
	distanceB = km1et2 + km2et3 + km3et4 + km4et5 + km5et6 + km6et7 + km7et8 + km8et9 + km9et10 + km10et11 + km11et1
	
	
compteur += 1


#condition pour ne garder que le le plus court parcours trouvé
if distanceT < plusPetit
plusPetit = distanceT
itineraire = villes[0][0] + " " + villes[1][0] + " " + villes[2][0] + " " + villes[3][0] + " " + villes[4][0] + " " + villes[5][0] + " " + villes[6][0] + " " + villes[7][0] + " " + villes[8][0] + " " + villes[9][0] + " " + villes[10][0] + " " + villes[0][0]
ville1 = "distance entre #{villes[0][0]} et #{villes[1][0]}: #{km1et2} km"
ville2 = "distance entre #{villes[1][0]} et #{villes[2][0]}: #{km2et3} km"
ville3 = "distance entre #{villes[2][0]} et #{villes[3][0]}: #{km3et4} km"
ville4 = "distance entre #{villes[3][0]} et #{villes[4][0]}: #{km4et5} km"
ville5 = "distance entre #{villes[4][0]} et #{villes[5][0]}: #{km5et6} km"	
ville6 = "distance entre #{villes[5][0]} et #{villes[6][0]}: #{km6et7} km"
ville7 = "distance entre #{villes[6][0]} et #{villes[7][0]}: #{km7et8} km"
ville8 = "distance entre #{villes[7][0]} et #{villes[8][0]}: #{km8et9} km"
ville9 = "distance entre #{villes[8][0]} et #{villes[9][0]}: #{km9et10} km"
ville10 = "distance entre #{villes[9][0]} et #{villes[10][0]}: #{km10et11} km"
ville11 = "distance entre #{villes[10][0]} et #{villes[0][0]}: #{km11et1} km"
	puts "pourcours plus petit trouvé"
	puts itineraire
else
	plusPetit=plusPetit
end
#mélange du tableau
villes.shuffle!

end
#Affichage
puts ville1
puts ville2
puts ville3
puts ville4
puts ville5
puts ville6
puts ville7
puts ville8
puts ville9
puts ville10
puts ville11
puts ""
puts "longueur du parcours de base #{distanceB} km"
puts""
puts "longueur du parcours optimisé: #{plusPetit} km"
puts ""
puts"Parcours optimisé:" 
puts itineraire
puts ""

puts "APPUYER UNE TOUCHE POUR QUITTER"
choix = gets.chomp
