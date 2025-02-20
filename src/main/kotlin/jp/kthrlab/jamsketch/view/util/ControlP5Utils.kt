package jp.kthrlab.jamsketch.view.util

import controlP5.ControlP5
import jp.kthrlab.jamsketch.config.Channel
import java.awt.Color

fun addButtons(p5ctrl: ControlP5, mode: String) {
    if (mode == "client") {
        p5ctrl.addButton("reconnect").setLabel("Reconnect").setPosition(20f, 645f).setSize(120, 40)
    } else {
        p5ctrl.addButton("startMusic").setLabel("Start / Stop").setPosition(20f, 645f).setSize(120, 40)
        p5ctrl.addButton("loadCurve").setLabel("Load").setPosition(300f, 645f).setSize(120, 40)
    }
    p5ctrl.addButton("resetMusic").setLabel("Reset").setPosition(160f, 645f).setSize(120, 40)

    // panic!
    p5ctrl.addButton("panic")
        .setColorBackground(Color.LIGHT_GRAY.rgb)
        .setColorForeground(Color.RED.rgb)
        .setLabel("Panic!")
        .setPosition((p5ctrl.papplet.width - 20 - 60).toFloat(), 645f)
        .setSize(60, 40)
}

fun addInstrumentSelector(p5ctrl: ControlP5, channels: List<Channel>, color: (v1: Int, v2: Int, v3: Int) -> Int) {
    val p5Radio = p5ctrl.addRadioButton("setInstrument")
        .setPosition(650f, 655f)
        .setSize(20, 20)
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
