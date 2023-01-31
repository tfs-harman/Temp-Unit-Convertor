import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
Image{

    source:"Images/rotation_image.png"
    states: [
        State{
            name: "portrait" ;
            PropertyChanges {target:orientID;x:900;y:850}
        },
        State{
            name: "landscape" ;
            PropertyChanges {target:orientID;x:800;y:850;}
        }
    ]
    MouseArea{
        id:mouseID;
        anchors.fill: parent;
        onClicked: {
            itemrectID.state=(itemrectID.state=="landscape"?"portrait":"landscape")
            mainrectID.state= (mainrectID.state=="landscape"?"portrait":"landscape")
            columnID.state= (columnID.state=="landscape"?"portrait":"landscape")
            orientID.state=(orientID.state=="landscape"?"portrait":"landscape")
            mainrowID.state=(mainrowID.state==="landscape"?"portrait":"landscape")
            mainrowID1.state=(mainrowID1.state==="landscape"?"portrait":"landscape")
            mainrowID2.state=(mainrowID2.state==="landscape"?"portrait":"landscape")
            textID.state=(textID.state==="landscape"?"portrait":"landscape")
        }
    }

}
