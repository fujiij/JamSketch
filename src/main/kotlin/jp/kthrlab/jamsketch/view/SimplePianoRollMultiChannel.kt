package jp.kthrlab.jamsketch.view

import jp.kthrlab.jamsketch.music.data.PianoRollDataModelMultiChannel

abstract class SimplePianoRollMultiChannel: SimplePianoRollScalable() {
    protected abstract var currentInstrumentChannelNumber: Int

//    override fun draw() {
//        super.draw()
//        drawChannels()
//    }

    fun isInside(x: Int, y: Int, scaleFactor: Float): Boolean {
        // from SimplePianoRoll
        val nOctave =  3
        val octaveWidth = 210.0
        println("isInside($x, $y, $scaleFactor) == ${x >= 100 && x < this.width / scaleFactor && y >= 0 && y.toDouble() < nOctave.toDouble() * octaveWidth}")
        return x >= 100 && x < this.width / scaleFactor && y >= 0 && y.toDouble() < nOctave.toDouble() * octaveWidth
    }

    override fun drawDataModel() {
        drawChannels()
    }

    fun drawChannels() {
        if (isNoteVisible) {
            with (dataModel as PianoRollDataModelMultiChannel) {
                val lenMeas: Double = (width - keyboardWidth) / measureNum
                channels.forEach { channel ->
                    with(channel.color){
                        strokeWeight(1.5f)
                        stroke(r.toFloat(), g.toFloat(), b.toFloat(),  a.toFloat())
                    }
                    val part = getPart(channel.number)
                    part?.noteOnlyList?.forEach { note ->
                        if (note.onset() >= (displaysFromMeasure * beatNum * scc.division).toLong() && note.onset() < (displaysToMeasure * beatNum * scc.division).toLong()) {
                            val measure: Int = (note.onset() / scc.division.toLong() / beatNum.toLong()).toInt()
                            val beat: Double = note.onset().toDouble() / scc.division.toDouble() - (measure * beatNum).toDouble()
                            val duration: Double = (note.offset() - note.onset()).toDouble() / scc.division
//                            println("measure=$measure, beat=$beat, duration = ${note.offset()}-${note.onset()} / ${scc.division} = $duration")
                            drawNote(measure - this.displaysFromMeasure, beat, duration, note.notenum(), false, dataModel)
                        }
                    }
                }
            }
        }
    }

    //

}