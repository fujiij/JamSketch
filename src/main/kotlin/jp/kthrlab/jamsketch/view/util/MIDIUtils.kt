package jp.kthrlab.jamsketch.view.util

import jp.crestmuse.cmx.processing.CMXController
import jp.kthrlab.jamsketch.music.data.MusicData
import javax.sound.midi.MidiSystem
import javax.sound.midi.Synthesizer

val baseNotes = mapOf(
    "C" to 0, "C#" to 1, "D" to 2, "D#" to 3, "E" to 4,
    "F" to 5, "F#" to 6, "G" to 7, "G#" to 8, "A" to 9,
    "A#" to 10, "B" to 11
)

/**
 * Returns the international MIDI note number
 */
fun getNoteNumber(note: String, octave: Int): Int {
    val nn = baseNotes[note] ?: throw IllegalArgumentException("Invalid note")
    // The note number of C in octave -1 is 0
    return (octave + 1) * 12 + nn
}

val programs = mapOf(
    1 to "Piano 1",
    2 to "Piano 2",
    3 to "Piano 3",
    4 to "Honky-tonk Piano",
    5 to "",
    6 to "",
    7 to "",
    8 to "",
    9 to "",
    10 to "",
    11 to "",
    12 to "",
    13 to "Marimba",
    14 to "Xylophone",
    15 to "",
    16 to "",
    17 to "",
    18 to "Percussive Organ",
    19 to "Rock Organ",
    20 to "",
    21 to "",
    22 to "",
    23 to "",
    24 to "",
    25 to "",
    26 to "",
    27 to "",
    28 to "",
    29 to "",
    30 to "",
    31 to "",
    32 to "",
    33 to "",
    34 to "",
    35 to "",
    36 to "",
    37 to "",
    38 to "",
    39 to "",
    40 to "",
    41 to "",
    42 to "",
    43 to "",
    44 to "",
    45 to "",
    46 to "",
    47 to "",
    48 to "",
    49 to "",
    50 to "",
    51 to "",
    52 to "",
    53 to "",
    54 to "",
    55 to "",
    56 to "",
    57 to "Trumpet",
    58 to "Trombone",
    59 to "Tuba",
    60 to "",
    61 to "",
    62 to "",
    63 to "",
    64 to "",
    65 to "Soprano Sax",
    66 to "Alto Sax",
    67 to "Tenor Sax",
    68 to "",
    69 to "",
    70 to "",
    71 to "",
    72 to "",
    73 to "",
    74 to "Flute",
    75 to "",
    76 to "",
    77 to "",
    78 to "",
    79 to "",
    80 to "",
    81 to "",
    82 to "",
    83 to "",
    84 to "",
    85 to "",
    86 to "",
    87 to "",
    88 to "",
    89 to "",
    90 to "",
    91 to "",
    92 to "",
    93 to "",
    94 to "",
    95 to "",
    96 to "",
    97 to "",
    98 to "",
    99 to "",
    100 to "",
    101 to "",
    102 to "",
    103 to "",
    104 to "",
    105 to "",
    106 to "",
    107 to "",
    108 to "",
    109 to "",
    110 to "",
    111 to "",
    112 to "",
    113 to "",
    114 to "",
    115 to "",
    116 to "",
    117 to "",
    118 to "",
    119 to "",
    120 to "",
    121 to "",
    122 to "",
    123 to "",
    124 to "",
    125 to "",
    126 to "",
    127 to "",
    128 to "",
)

fun sendAllNotesOff() {
    val midiDeviceInfo = MidiSystem.getMidiDeviceInfo()
    midiDeviceInfo.forEach { info ->
        val midiDevice = MidiSystem.getMidiDevice(info)
        println("${info.name}, isOpen==${midiDevice.isOpen}, ${midiDevice}")
        if (midiDevice is Synthesizer) {
            if (!midiDevice.isOpen) midiDevice.open()
            println("${info.name}, isOpen==${midiDevice.isOpen}, ${midiDevice}")
            midiDevice.channels.forEach { channel ->
                channel.allNotesOff()
                channel.allSoundOff()
            }
            midiDevice.close()
        }
    }
}

fun sendAllNotesOff(musicData: MusicData) {
    val cmx = CMXController.getInstance()
    musicData.channelCurveSet.forEach { channel ->
        val channelPart = musicData.scc.toDataSet().getFirstPartWithChannel(channel.first)//.addNoteElement()
        val tickPosition = cmx.tickPosition

        // from note 0 t0 127
        musicData.channelCurveSet.forEach { channel ->
            (0..127).forEach { nn ->
                val noteElement = channelPart.addNoteElement(tickPosition, tickPosition, nn, 0, 0)
                println("addNoteElement($tickPosition, $tickPosition, $nn, 0, 0)")
                channelPart.remove(noteElement)
            }
        }
    }
}