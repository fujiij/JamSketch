package jp.kthrlab.jamsketch.view

import jp.crestmuse.cmx.processing.gui.SimplePianoRoll
import jp.kthrlab.jamsketch.music.data.PianoRollDataModelMultiChannel
import java.awt.Color

abstract class SimplePianoRollMultiChannel: SimplePianoRoll() {
    protected abstract var currentInstrumentChannelNumber: Int

    override fun draw() {
        super.draw()
        drawChannels()
        drawPlayhead()
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
   private fun drawPlayhead() {
        val measure = this.currentMeasure
        val beat = this.currentBeat

        if (measure >= 0) {
            val x = this.beat2x(measure, beat)
            this.stroke(Color.RED.rgb)
            this.strokeWeight(1.0f)
            this.line(x.toFloat(), 0.0f, x.toFloat(), 630.0f)
        }

    }

}