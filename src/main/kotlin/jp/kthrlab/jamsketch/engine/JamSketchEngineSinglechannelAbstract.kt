package jp.kthrlab.jamsketch.engine

import jp.crestmuse.cmx.filewrappers.SCC
import jp.crestmuse.cmx.filewrappers.SCCDataSet
import jp.crestmuse.cmx.inference.MusicCalculator
import jp.crestmuse.cmx.inference.MusicRepresentation
import jp.crestmuse.cmx.misc.ChordSymbol2
import jp.crestmuse.cmx.misc.ChordSymbol2.NON_CHORD
import jp.crestmuse.cmx.processing.CMXController
import jp.kthrlab.jamsketch.config.AccessibleConfig
import jp.kthrlab.jamsketch.config.IConfigAccessible
import jp.kthrlab.jamsketch.music.generator.SCCGenerator

abstract class JamSketchEngineSinglechannelAbstract : JamSketchEngine,  IConfigAccessible {

    override var config = AccessibleConfig.config
    lateinit var mr: MusicRepresentation
    var cmx: CMXController? = null
    var scc: SCC? = null
    var expgen: Any? = null

    protected companion object {
        var OUTLINE_LAYER: String = "curve"
        var MELODY_LAYER: String = "melody"
        var CHORD_LAYER: String = "chord"
    }

    abstract fun outlineUpdated(measure: Int, tick: Int)
    abstract fun automaticUpdate(): Boolean
    abstract fun initMusicRepresentation()
    abstract fun initLocal()
    abstract fun musicCalculatorForOutline(): MusicCalculator?

    override fun init(scc: SCC, target_part: SCC.Part) {
        this.scc = scc
        cmx = CMXController.getInstance()

        initMusicRepresentation()
        // if (cfg.EXPRESSION) {
        //    expgen = new ExpressionGenerator()
        //    expgen.start(scc.getFirstPartWithChannel(1),
        //           getFullChordProgression(), cfg.BEATS_PER_MEASURE)
        // }

        val sccgen = SCCGenerator(
            target_part as SCCDataSet.Part,
            scc.division,
            OUTLINE_LAYER,
            expgen,
            config.music.division,
            config.music.beats_per_measure,
            )
        mr.addMusicCalculator(MELODY_LAYER, sccgen)
        val calc: MusicCalculator? = musicCalculatorForOutline()
        if (calc != null) {
            mr.addMusicCalculator(OUTLINE_LAYER, calc)
        }

        initLocal()
    }

    val fullChordProgression: Any
        get() = List(config.music.initial_blank_measures) { NON_CHORD } +
                List(config.music.repeat_times) { config.music.chordprog.toList()}.flatten()


    override fun setMelodicOutline(measure: Int, tick: Int, value: Double) {
        val e = mr.getMusicElement(OUTLINE_LAYER, measure, tick)
        if (!automaticUpdate()) {
            e.suspendUpdate()
        }
        e.setEvidence(value)
        outlineUpdated(measure, tick)
    }

    override fun getMelodicOutline(measure: Int, tick: Int): Double {
        return ((mr.getMusicElement(OUTLINE_LAYER, measure, tick).mostLikely) as Double)
    }

    override fun resetMelodicOutline() {
        mr.getMusicElementList(OUTLINE_LAYER).forEach { element ->
            mr.getMusicElement(OUTLINE_LAYER, element.measure(), element.tick()).setEvidence(Double.NaN)
        }

//        mr.getMusicElementList(MELODY_LAYER).forEach { element ->
//            mr.getMusicElement(MELODY_LAYER, element.measure(), element.tick()).setRest(true)
//        }

//        (0..cfg!!.num_of_measures-1).forEach { i ->
//            (0..cfg!!.division-1).forEach { j ->
//                mr.getMusicElement(OUTLINE_LAYER, i, j).
//                setEvidence(Double.NaN)
//            }
//        }
    }

    override fun setFirstMeasure(num: Int) {
        SCCGenerator.firstMeasure = num
    }

    override fun getChord(measure: Int, tick: Int): ChordSymbol2? {
        return ((mr.getMusicElement(CHORD_LAYER, measure, tick).mostLikely) as ChordSymbol2)
    }

    override fun init(scc: SCC) {
        TODO("Not yet implemented")
    }

    override fun setMelodicOutline(channel: Int, measure: Int, tick: Int, value: Double) {
        TODO("Not yet implemented")
    }

    override fun getMelodicOutline(channel: Int, measure: Int, tick: Int): Double {
        TODO("Not yet implemented")
    }

    override fun getChord(channel: Int, measure: Int, tick: Int): ChordSymbol2? {
        TODO("Not yet implemented")
    }

    override fun resetMelodicOutline(channel: Int) {
        TODO("Not yet implemented")
    }
}
