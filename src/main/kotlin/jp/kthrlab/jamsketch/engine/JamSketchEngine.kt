package jp.kthrlab.jamsketch.engine

import jp.crestmuse.cmx.filewrappers.SCC
import jp.crestmuse.cmx.misc.ChordSymbol2

interface JamSketchEngine {
    fun init(scc: SCC, target_part: SCC.Part)

    fun setMelodicOutline(measure: Int, tick: Int, value: Double)

    fun getMelodicOutline(measure: Int, tick: Int): Double

    fun getChord(measure: Int, tick: Int): ChordSymbol2?

    fun setFirstMeasure(number: Int)

    fun resetMelodicOutline()
}