import Felgo 3.0
import QtQuick 2.0

Page {

    ListView {
          width: 180; height: 200

          model: ListModel {
              ListElement {
                  number: "555 3264"
              }
              ListElement {
                  number: "555 8426"
              }
              ListElement {
                  number: "555 0473"
              }
          }
          delegate: Text {
              text: number
          }
      }

}
