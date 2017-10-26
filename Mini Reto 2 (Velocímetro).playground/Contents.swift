//: Playground - noun: a place where people can play

var str = "Velocímetro"

print("\n\(str)\n\n")

enum Velocidades : Int{
    case Apagado=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    var estado :String {
        switch self{
        case .Apagado :
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad baja"
        case .VelocidadMedia:
            return "Velocidad media"
        case .VelocidadAlta:
            return "Velocidad alta"
        }
        
    }
}

class Auto {
    var velocidad : Velocidades
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        let VelocidadActual = self.velocidad
        
        switch (self.velocidad) {
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        return (VelocidadActual.rawValue , VelocidadActual.estado)
    }
}

var auto : Auto = Auto()

auto.velocidad

for _ in 1...20{
    let vel=auto.cambioDeVelocidad()
    print("Velocidad: \(vel.actual)\t, \(vel.velocidadEnCadena) ")
}
