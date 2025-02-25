package jp.kthrlab.jamsketch.engine

import jp.crestmuse.cmx.inference.MusicCalculator
import jp.crestmuse.cmx.misc.ChordSymbol2
import jp.crestmuse.cmx.processing.CMXController
import jp.kthrlab.jamsketch.music.generator.NoteSeqGeneratorTF1
import jp.kthrlab.jamsketch.music.generator.SCCGenerator
import kotlin.random.Random

//class JamSketchEngineTF1: JamSketchEngineSinglechannelAbstract() {
class JamSketchEngineTF1: JamSketchEngineAbstract() {

    private lateinit var noteSeqGeneratorTf1: NoteSeqGeneratorTF1

    override fun initLocal() {
        noteSeqGeneratorTf1 = NoteSeqGeneratorTF1(
            config.music.num_of_measures,
            config.music.melody_execution_span,
            config.tf.tf_model_dir,
            config.tf.tf_model_layer,
            config.tf.tf_note_num_start,
            config.tf.tf_rest_col,
            config.tf.tf_chord_col_start,
            config.tf.tf_num_of_melody_element,
        )
    }

    override fun initMusicRepresentation() {
        val mr = CMXController.createMusicRepresentation(config.music.num_of_measures, config.music.division)

        // Layer.OUTLINE
        mr.addMusicLayerCont(Layer.OUTLINE)

        // Layer.CHORD
        mr.addMusicLayer(
            Layer.CHORD,
            listOf<ChordSymbol2>(ChordSymbol2.C, ChordSymbol2.F, ChordSymbol2.G),
            config.music.division
        )
        config.music.chordprog.forEachIndexed { index, chord ->
            mr.getMusicElement(Layer.CHORD, index, 0).setEvidence(ChordSymbol2.parse(chord))
        }

        // TODO: Need new mr for each channel?
        mr.addMusicLayer(Layer.GEN, Array(config.tf.tf_note_con_col_start){it})
        config.channels.forEach { channel ->
            channelMrSet.add(Pair(channel.number, mr))
            val mapCalc = mutableMapOf(
                Pair(Layer.OUTLINE, musicCalculatorForOutline()),
                Pair(Layer.GEN, musicCalculatorForGen(channel.number))
            )
            channelCalcSet.add(Pair(channel.number, mapCalc))
        }

    }

    override fun musicCalculatorForOutline(): MusicCalculator {
        return NoteSeqGeneratorTF1(
            config.music.num_of_measures,
            config.music.melody_execution_span,
            config.tf.tf_model_dir,
            config.tf.tf_model_layer,
            config.tf.tf_note_num_start,
            config.tf.tf_rest_col,
            config.tf.tf_chord_col_start,
            config.tf.tf_num_of_melody_element,
        )
    }

    override fun musicCalculatorForGen(channel: Int): MusicCalculator {
        return SCCGenerator(
            scc.toDataSet().getFirstPartWithChannel(channel),
            scc.division,
            Layer.OUTLINE,
            null,
            config.music.division,
            config.music.beats_per_measure,
        )
    }

    override fun outlineUpdated(channel: Int, measure: Int, tick: Int) {
        val mr = channelMrSet.find { it.first == channel }?.second
        val e = mr?.getMusicElement(Layer.OUTLINE, measure, tick)
        e?.resumeUpdate()

        val noteSeqGenerator = channelCalcSet.find { it.first == channel }?.second?.get(Layer.OUTLINE)
        noteSeqGenerator?.updated(measure, tick, Layer.OUTLINE, mr)

        val sccGenerator = channelCalcSet.find { it.first == channel }?.second?.get(Layer.GEN)
        sccGenerator?.updated(measure, tick, Layer.GEN, mr)

    }

//    override fun musicCalculatorForOutline() : MusicCalculator? {
//        return null
//    }
//
//    override fun outlineUpdated(measure: Int, tick: Int) {
//        noteSeqGeneratorTf1.updated(measure, tick, OUTLINE_LAYER, mr)
//    }
//
//    override fun automaticUpdate(): Boolean {
//        return false
//    }
}

