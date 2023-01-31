import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Temperature Unit Convertor")

    property string fahrenheit;
    property string celsius;
    property string kelvin;
    property real fahren:0;
    property real cels:0;
    property real kel:0;
    property int a:0;

    Item{
        id:itemrectID;
        x:500;y:50;
        states: [
            State{
                name: "portrait" ;
                PropertyChanges {target:itemrectID;x:550;y:50}
            },
            State{
                name: "landscape" ;
                PropertyChanges {target:itemrectID;x:0;y:0}
            }
        ]
        Main_Rectangle{
            id:mainrectID;
            color:"lightgrey";
            width: 1000;
            state: "landscape";
            height:890;

            Columns{
                id:columnID;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                anchors.centerIn: parent;
                anchors.left: mainrectID.left;
                anchors.margins: 7;
                spacing: 100;
                Layout.fillWidth:true;
                Layout.fillHeight: true;
            }
        }
        Orientation{
            id:orientID;
            width:100;
            height:30;
            x:900;
            y:850;
        }
    }
}
