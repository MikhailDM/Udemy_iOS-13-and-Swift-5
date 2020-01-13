
var skeleton1 = Enemy(health: 100, attackStrengh: 10)
//Another reference or copy(in Struct)
var skeleton2 = skeleton1

skeleton1.takeDamage(amount: 10)
skeleton1.takeDamage(amount: 10)
skeleton2.takeDamage(amount: 10)

print(skeleton1.health)
print(skeleton2.health)

