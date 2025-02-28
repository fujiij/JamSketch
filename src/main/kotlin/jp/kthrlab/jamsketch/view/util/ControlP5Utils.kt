package jp.kthrlab.jamsketch.view.util

import controlP5.ControlP5
import jp.kthrlab.jamsketch.config.Channel
import java.awt.Color

fun addButtons(p5ctrl: ControlP5, mode: String, scalePercentage: Float = 1.0f) {
    if (mode == "client") {
        p5ctrl.addButton("reconnect")
            .setLabel("Reconnect")
            .setPosition(20f * scalePercentage, 645f * scalePercentage)
            .setSize((120 * scalePercentage).toInt(), (40 * scalePercentage).toInt())
    } else {
        p5ctrl.addButton("startMusic")
            .setLabel("Start / Stop")
            .setPosition(20f * scalePercentage, 645f * scalePercentage)
            .setSize((120 * scalePercentage).toInt(), (40 * scalePercentage).toInt())
        p5ctrl.addButton("loadCurve")
            .setLabel("Load")
            .setPosition(300f * scalePercentage, 645f * scalePercentage)
            .setSize((120 * scalePercentage).toInt(), (40 * scalePercentage).toInt())
        // panic!
        p5ctrl.addButton("panic")
            .setColorBackground(Color.LIGHT_GRAY.rgb)
            .setColorForeground(Color.RED.rgb)
            .setLabel("Panic!")
            .setPosition((p5ctrl.papplet.width - 20 * scalePercentage - 60 * scalePercentage).toFloat(), 645f * scalePercentage)
            .setSize((60 * scalePercentage).toInt(), (40 * scalePercentage).toInt())
    }
    p5ctrl.addButton("resetMusic")
        .setLabel("Reset")
        .setPosition(160f * scalePercentage, 645f * scalePercentage)
        .setSize((120 * scalePercentage).toInt(), (40 * scalePercentage).toInt())
}

fun addInstrumentSelector(p5ctrl: ControlP5, channels: List<Channel>, color: (v1: Int, v2: Int, v3: Int) -> Int, scalePercentage: Float = 1.0f) {
    val p5Radio = p5ctrl.addRadioButton("setInstrument")
        .setPosition(650f * scalePercentage, 655f * scalePercentage)
        .setSize((20 * scalePercentage).toInt(), (20 * scalePercentage).toInt())
        .setItemsPerRow(4)
        .setSpacingColumn(90)
        .setColorLabel(0x000000)
        .setNoneSelectedAllowed(false)

    channels.forEach { channel ->
        val item = p5Radio.addItem(programs[channel.program], channel.program.toFloat()).getItem(programs[channel.program])
        with(channel.color) {
            item.setColorActive(color.invoke(r, g, b))
        }
    }
    p5Radio.activate(0)
}
