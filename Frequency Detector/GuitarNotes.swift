import Foundation

struct GuitarNotes {
    struct StringNote {
        let stringNumber: Int
        let openStringNote: Note
    }
    
    // Настройка шестиструнной гитары (стандартный строй: EADGBE)
    static let strings: [StringNote] = [
        StringNote(stringNumber: 1, openStringNote: NotesDatabase.notes.first { $0.name == "E" && $0.octave == 4 }!),
        StringNote(stringNumber: 2, openStringNote: NotesDatabase.notes.first { $0.name == "B" && $0.octave == 3 }!),
        StringNote(stringNumber: 3, openStringNote: NotesDatabase.notes.first { $0.name == "G" && $0.octave == 3 }!),
        StringNote(stringNumber: 4, openStringNote: NotesDatabase.notes.first { $0.name == "D" && $0.octave == 3 }!),
        StringNote(stringNumber: 5, openStringNote: NotesDatabase.notes.first { $0.name == "A" && $0.octave == 2 }!),
        StringNote(stringNumber: 6, openStringNote: NotesDatabase.notes.first { $0.name == "E" && $0.octave == 2 }!)
    ]
    
    // Расчет частоты ноты по номеру струны и лада
    static func calculateFrequency(forString string: Int, fret: Int) -> Double? {
        guard let stringNote = strings.first(where: { $0.stringNumber == string }) else {
            return nil // Если струна не найдена
        }
        
        let openFrequency = stringNote.openStringNote.frequency
        let semitoneRatio = pow(2.0, 1.0 / 12.0) // 1 полутон = корень 12-й степени из 2
        
        // Рассчитываем частоту: смещение на `fret` полутонов от открытой струны
        return openFrequency * pow(semitoneRatio, Double(fret))
    }
}
