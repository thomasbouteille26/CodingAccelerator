//Creez un programme qui affiche toute les différentes combinaisons possibles de trois chiffres dans l'ordre croissant. La répetition est volontaire
for i in 0...9 {
    for j in 0...9 {
        for k in 0...9 {
            if i != j && i != k  && j != k {
                if i < k && j < k {
                    print("\(i)\(j)\(k), ", terminator:"" )
                }
            }
        }
    }
}




