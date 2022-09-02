import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt.labs.settings 1.1

import Qloudy 0.1

import '../controls'

BaseForm {
    id: form

    palette {
        button: '#33ffffff'
        buttonText: '#fff'

        window: '#55000000'
        windowText: '#fff'

        highlight: '#33ffffff'
        highlightedText: '#fff'
    }

    background: weatherForm.back

    TabLayout {
        id: tabView

        clip: true
        padding: 8
        anchors.fill: parent
        currentIndex: 0

        tabs: [
            { text:'Weather', icon: '\uee58'},
            { text:'Configuration', icon: '\uef39'},
        ]

        WeatherForm { id: weatherForm }
        ConfigurationForm { }
    }
}
