/*
 * Copyright (C) 2022  Your FullName
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * lockertest is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import Ubuntu.Components 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'lockertest.ld'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)


    AdaptivePageLayout {
        id: pageStack
        anchors.fill: parent
        primaryPage: Security { }
        //primaryPage: SchemaPinPromptTutorial {}
        layouts: [
            PageColumnsLayout {
                when: width >= units.gu(90)
                PageColumn {
                    minimumWidth: units.gu(40)
                    maximumWidth: units.gu(50)
                    preferredWidth: units.gu(50)
                }
                PageColumn {
                    fillWidth: true
                }
            },
            PageColumnsLayout {
                when: true
                PageColumn {
                    fillWidth: true
                    minimumWidth: units.gu(40)
                }
            }
        ]
    }


}
