class Enemy {
    var health: Int
    var attackStrengh: Int
    
    init(health: Int, attackStrengh: Int) {
        self.health = health
        self.attackStrengh = attackStrengh
    }
    
    func takeDamage(amount: Int) {
        health = health - amount
    }
    
    func move() {
        print("Walk forward")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrengh) damage")
    }
}
