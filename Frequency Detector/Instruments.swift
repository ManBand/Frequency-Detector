struct Instruments {
    enum TypeOfInstrument: String {
        case guitar = "Guitar"
        case bass = "Bass"
        case piano = "Piano"
        case drums = "Drums"
    }
    
    static let listOfInstruments: [TypeOfInstrument] = [.guitar]
}
