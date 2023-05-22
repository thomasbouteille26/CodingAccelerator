//Creez un programme qui affiche toute les différentes combinaisons de deux nombres dans l'ordre croissant.
for i in 00...99 {
    for j in 00...99 {
        if i < j {
            print("\(i) \(j), ", terminator:"")
        }
    }
}
