package jp.kthrlab.jamsketch.view

import jp.crestmuse.cmx.misc.PianoRoll
import jp.crestmuse.cmx.processing.CMXApplet
import java.awt.Color

open class SimplePianoRollScalable(
    open var musicWidth: Int = 0,    // width before scale
    open var musicHeight: Int = 0,   // height before scale
    basenn: Int = 48,
    var octaveWidth: Double = 210.0,
    var nOctave: Int = 3,
    var keyboardWidth: Double = 100.0,
    var noteR: Int = 255,
    var noteB: Int = 25,
    var noteG: Int = 200,
    var playheadR: Int = 255,
    var playheadB: Int = 0,
    var playheadG: Int = 0,
) : CMXApplet() {

    var basenn: Int = basenn
        set(value) {
            (value % 12 == 0).let { field = value }
        }

    var isNoteVisible = true
    var dataModel: PianoRoll.DataModel? = null

    override fun setup() {
        this.background(255)
        this.smooth()
    }

    override fun draw() {
        drawPianoRoll()
        drawDataModel()
        drawPlayhead()
    }

    fun drawPianoRoll() {
        this.background(255)
        this.drawKeyboard()
        this.drawLines()
    }

   open fun drawDataModel() {}

    private  fun drawKeyboard() {
        this.strokeWeight(0.5f)
        this.stroke(130)

        for (a in 0..<this.nOctave) {
            this.drawKeyboard(0, (this.octaveWidth * a.toDouble()).toInt())
        }
    }

    private fun drawKeyboard(x: Int, y: Int) {
        this.line(keyboardWidth, (y + 0).toDouble(), keyboardWidth, y.toDouble() + this.octaveWidth)

        for (i in 1..7) {
            this.line(
                x.toFloat(),
                (y + (i.toDouble() * this.octaveWidth / 7.0).toInt()).toFloat(),
                100.0f,
                (y + (i.toDouble() * this.octaveWidth / 7.0).toInt()).toFloat()
            )
        }

        this.fill(0)
        this.rect(
            x.toFloat(),
            (y + (1.0 * this.octaveWidth / 12.0).toInt()).toFloat(),
            60.0f,
            ((this.octaveWidth / 12.0).toInt()).toFloat()
        )
        this.rect(
            x.toFloat(),
            (y + (3.0 * this.octaveWidth / 12.0).toInt()).toFloat(),
            60.0f,
            ((this.octaveWidth / 12.0).toInt()).toFloat()
        )
        this.rect(
            x.toFloat(),
            (y + (5.0 * this.octaveWidth / 12.0).toInt()).toFloat(),
            60.0f,
            ((this.octaveWidth / 12.0).toInt()).toFloat()
        )
        this.rect(
            x.toFloat(),
            (y + (8.0 * this.octaveWidth / 12.0).toInt()).toFloat(),
            60.0f,
            ((this.octaveWidth / 12.0).toInt()).toFloat()
        )
        this.rect(
            x.toFloat(),
            (y + (10.0 * this.octaveWidth / 12.0).toInt()).toFloat(),
            60.0f,
            ((this.octaveWidth / 12.0).toInt()).toFloat()
        )
    }


    private fun drawLines() {
        for (a in 0..<this.nOctave) {
            for (b in 1..12) {
                this.stroke(130)
                this.strokeWeight(0.0f)
                val lineWidth = this.octaveWidth / 12.0
                this.line(
                    100.0, a.toDouble() * this.octaveWidth + lineWidth * b.toDouble(),
                    this.musicWidth.toDouble(), a.toDouble() * this.octaveWidth + lineWidth * b.toDouble()
                )
            }
        }

        if (this.dataModel != null) {
            val lengtheach: Double = (this.musicWidth - this.keyboardWidth) / this.dataModel!!.measureNum.toDouble()

            for (i in 0..<this.dataModel!!.measureNum) {
                this.line(
                    ((this.keyboardWidth + i.toDouble() * lengtheach).toInt()).toDouble(),
                    0.0,
                    ((this.keyboardWidth + i.toDouble() * lengtheach).toInt()).toDouble(),
                    nOctave.toDouble() * this.octaveWidth
                )
            }
        }
    }


//    override fun drawNote(measure: Int, beat: Double, duration: Double, notenum: Int, selected: Boolean, data: PianoRoll.DataModel?) {
    fun drawNote(measure: Int, beat: Double, duration: Double, notenum: Int, selected: Boolean, data: PianoRoll.DataModel?) {
        if (this.isNoteVisible) {
            val lenMeas = (this.musicWidth - keyboardWidth) / data!!.measureNum.toDouble()
            val x = this.beat2x(measure, beat)
            val w = duration * lenMeas / data.beatNum.toDouble()
            val y = this.notenum2y(notenum.toDouble())
            fill(color(noteR, noteG, noteB))
            this.rect(x.toFloat(), y.toFloat(), w.toFloat(), octaveWidth.toFloat() / 12.0f)
        }

    }

//    override fun setKeyboardWidth(keyboardWidth: Double) {
//    fun setKeyboardWidth(keyboardWidth: Double) {
//        this.keyboardWidth = keyboardWidth
//    }

//    override fun getKeyboardWidth(): Double {
//    fun getKeyboardWidth(): Double {
//        return this.keyboardWidth
//    }

    val currentMeasure: Int
        get() {
            return this.dataModel?.tick2measure(this.tickPosition) ?: 0
        }

    val currentBeat: Double
        get() {
            return this.dataModel?.tick2beat(this.tickPosition) ?: 0.0
        }

    protected fun x2measure(x: Double): Int {
//        return this.dataModel?.let { this.x2measure(x) } ?: 0
        val lenMeas: Double = (this.musicWidth - keyboardWidth) / dataModel!!.measureNum.toDouble()
        return ((x - keyboardWidth) / lenMeas).toInt()
    }


    protected fun beat2x(measure: Int, beat: Double): Double {
        this.dataModel?.let {
            val lenMeas = (this.musicWidth - this.keyboardWidth) / it.measureNum.toDouble()
            return this.keyboardWidth + measure.toDouble() * lenMeas + beat * lenMeas / it.beatNum.toDouble()
        } ?: return 0.0
    }

    protected fun y2notenum(y: Double): Double {
        val topnn = this.basenn + 12 * this.nOctave
        return topnn.toDouble() - y / (this.octaveWidth / 12.0)
    }

//    protected fun notenum2y(nn: Int): Double {
//        val topnn = this.basenn + 12 * this.nOctave
//        return this.octaveWidth / 12.0 * (topnn - nn - 1).toDouble()
//    }

    protected fun notenum2y(nn: Double): Double {
        val topnn = this.basenn + 12 * this.nOctave
        return this.octaveWidth / 12.0 * (topnn.toDouble() - nn - 1.0)
    }

    protected fun drawPlayhead() {
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
