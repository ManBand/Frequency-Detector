struct Note {
    let name: String
    let octave: Int
    let frequency: Double
}

struct NotesDatabase {
    static let notes: [Note] = [
            // 0 октава
            Note(name: "C", octave: 0, frequency: 16.35),
            Note(name: "C#", octave: 0, frequency: 17.32),
            Note(name: "D", octave: 0, frequency: 18.35),
            Note(name: "D#", octave: 0, frequency: 19.45),
            Note(name: "E", octave: 0, frequency: 20.60),
            Note(name: "F", octave: 0, frequency: 21.83),
            Note(name: "F#", octave: 0, frequency: 23.12),
            Note(name: "G", octave: 0, frequency: 24.50),
            Note(name: "G#", octave: 0, frequency: 25.96),
            Note(name: "A", octave: 0, frequency: 27.50),
            Note(name: "A#", octave: 0, frequency: 29.14),
            Note(name: "B", octave: 0, frequency: 30.87),

            // 1 октава
            Note(name: "C", octave: 1, frequency: 32.70),
            Note(name: "C#", octave: 1, frequency: 34.65),
            Note(name: "D", octave: 1, frequency: 36.71),
            Note(name: "D#", octave: 1, frequency: 38.89),
            Note(name: "E", octave: 1, frequency: 41.20),
            Note(name: "F", octave: 1, frequency: 43.65),
            Note(name: "F#", octave: 1, frequency: 46.25),
            Note(name: "G", octave: 1, frequency: 49.00),
            Note(name: "G#", octave: 1, frequency: 51.91),
            Note(name: "A", octave: 1, frequency: 55.00),
            Note(name: "A#", octave: 1, frequency: 58.27),
            Note(name: "B", octave: 1, frequency: 61.74),

            // 2 октава
            Note(name: "C", octave: 2, frequency: 65.41),
            Note(name: "C#", octave: 2, frequency: 69.30),
            Note(name: "D", octave: 2, frequency: 73.42),
            Note(name: "D#", octave: 2, frequency: 77.78),
            Note(name: "E", octave: 2, frequency: 82.41),
            Note(name: "F", octave: 2, frequency: 87.31),
            Note(name: "F#", octave: 2, frequency: 92.50),
            Note(name: "G", octave: 2, frequency: 98.00),
            Note(name: "G#", octave: 2, frequency: 103.83),
            Note(name: "A", octave: 2, frequency: 110.00),
            Note(name: "A#", octave: 2, frequency: 116.54),
            Note(name: "B", octave: 2, frequency: 123.47),

            // 3 октава
            Note(name: "C", octave: 3, frequency: 130.81),
            Note(name: "C#", octave: 3, frequency: 138.59),
            Note(name: "D", octave: 3, frequency: 146.83),
            Note(name: "D#", octave: 3, frequency: 155.56),
            Note(name: "E", octave: 3, frequency: 164.81),
            Note(name: "F", octave: 3, frequency: 174.61),
            Note(name: "F#", octave: 3, frequency: 185.00),
            Note(name: "G", octave: 3, frequency: 196.00),
            Note(name: "G#", octave: 3, frequency: 207.65),
            Note(name: "A", octave: 3, frequency: 220.00),
            Note(name: "A#", octave: 3, frequency: 233.08),
            Note(name: "B", octave: 3, frequency: 246.94),

            // 4 октава
            Note(name: "C", octave: 4, frequency: 261.63),
            Note(name: "C#", octave: 4, frequency: 277.18),
            Note(name: "D", octave: 4, frequency: 293.66),
            Note(name: "D#", octave: 4, frequency: 311.13),
            Note(name: "E", octave: 4, frequency: 329.63),
            Note(name: "F", octave: 4, frequency: 349.23),
            Note(name: "F#", octave: 4, frequency: 369.99),
            Note(name: "G", octave: 4, frequency: 392.00),
            Note(name: "G#", octave: 4, frequency: 415.30),
            Note(name: "A", octave: 4, frequency: 440.00),
            Note(name: "A#", octave: 4, frequency: 466.16),
            Note(name: "B", octave: 4, frequency: 493.88),

            // 5 октава
            Note(name: "C", octave: 5, frequency: 523.25),
            Note(name: "C#", octave: 5, frequency: 554.37),
            Note(name: "D", octave: 5, frequency: 587.33),
            Note(name: "D#", octave: 5, frequency: 622.25),
            Note(name: "E", octave: 5, frequency: 659.25),
            Note(name: "F", octave: 5, frequency: 698.46),
            Note(name: "F#", octave: 5, frequency: 739.99),
            Note(name: "G", octave: 5, frequency: 783.99),
            Note(name: "G#", octave: 5, frequency: 830.61),
            Note(name: "A", octave: 5, frequency: 880.00),
            Note(name: "A#", octave: 5, frequency: 932.33),
            Note(name: "B", octave: 5, frequency: 987.77),

            // 6 октава
            Note(name: "C", octave: 6, frequency: 1046.50),
            Note(name: "C#", octave: 6, frequency: 1108.73),
            Note(name: "D", octave: 6, frequency: 1174.66),
            Note(name: "D#", octave: 6, frequency: 1244.51),
            Note(name: "E", octave: 6, frequency: 1318.51),
            Note(name: "F", octave: 6, frequency: 1396.91),
            Note(name: "F#", octave: 6, frequency: 1479.98),
            Note(name: "G", octave: 6, frequency: 1567.98),
            Note(name: "G#", octave: 6, frequency: 1661.22),
            Note(name: "A", octave: 6, frequency: 1760.00),
            Note(name: "A#", octave: 6, frequency: 1864.66),
            Note(name: "B", octave: 6, frequency: 1975.53),

            // 7 октава
            Note(name: "C", octave: 7, frequency: 2093.00),
            Note(name: "C#", octave: 7, frequency: 2217.46),
            Note(name: "D", octave: 7, frequency: 2349.32),
            Note(name: "D#", octave: 7, frequency: 2489.02),
            Note(name: "E", octave: 7, frequency: 2637.02),
            Note(name: "F", octave: 7, frequency: 2793.83),
            Note(name: "F#", octave: 7, frequency: 2959.96),
            Note(name: "G", octave: 7, frequency: 3135.96),
            Note(name: "G#", octave: 7, frequency: 3322.44),
            Note(name: "A", octave: 7, frequency: 3520.00),
            Note(name: "A#", octave: 7, frequency: 3729.31),
            Note(name: "B", octave: 7, frequency: 3951.07),

            // 8 октава
            Note(name: "C", octave: 8, frequency: 4186.01),
            Note(name: "C#", octave: 8, frequency: 4434.92),
            Note(name: "D", octave: 8, frequency: 4698.64),
            Note(name: "D#", octave: 8, frequency: 4978.03),
            Note(name: "E", octave: 8, frequency: 5274.04),
            Note(name: "F", octave: 8, frequency: 5587.65),
            Note(name: "F#", octave: 8, frequency: 5919.91),
            Note(name: "G", octave: 8, frequency: 6271.93),
            Note(name: "G#", octave: 8, frequency: 6644.88),
            Note(name: "A", octave: 8, frequency: 7040.00),
            Note(name: "A#", octave: 8, frequency: 7458.62),
            Note(name: "B", octave: 8, frequency: 7902.13)
        ]
    
    static func findNoteByFrequency(_ frequency: Double, tolerance: Double = 1.0) -> Note? {
        notes.first { $0.frequency.isInfinite || $0.frequency.isNaN || abs($0.frequency - frequency) < tolerance }
    }
    
    static func findNoteByName(_ name: String) -> [Note] {
        notes.filter { $0.name == name }
    }
    
    static func findNoteByOctave(_ octave: Int) -> [Note] {
        notes.filter { $0.octave == octave }
    }
    
    static func findNoteByNameAndOctave(_ name: String, _ octave: Int) -> Note? {
        notes.first { $0.name == name && $0.octave == octave }
    }
    
}
