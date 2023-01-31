import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
Rectangle{
    id:rectID;
    states: [
        State{
            name: "portrait" ;
            PropertyChanges {target: window;width:900;height:rectID.height;}
        },
        State{
            name: "landscape" ;
            PropertyChanges {target: window;}
        }
    ]

}

