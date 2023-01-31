import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
ColumnLayout{
    id:columnlayoutID;

    states: [
        State{
            name: "portrait" ;
            PropertyChanges {target: columnlayoutID;}
        },
        State{
            name: "landscape" ;
            PropertyChanges {target: columnlayoutID;anchors.left:mainrectID.left;}
        }
    ]
    Text{
        id:textID;
        text:"Temperature Unit Convertor";
        color:"black";
        font.pointSize: 34;
        font.family: "Arial";
        state:"landscape";
            states: [
                State{
                    name: "portrait" ;
                    PropertyChanges {target:textID;font.pointSize: 28;}
                },
                State{
                    name: "landscape" ;
                    PropertyChanges {target:textID;}
                }
            ]
        }
    RowLayout{
        id:mainrowID;
        Layout.fillWidth: true;
        Layout.fillHeight: true;
        spacing: 60;
        Layout.alignment: Qt.AlignHCenter;
        states: [
            State{
                name: "portrait" ;
                PropertyChanges {target: mainrowID;}
            },
            State{
                name: "landscape" ;
                PropertyChanges {target:mainrowID; Layout.alignment: Qt.AlignLeft;}
            }
        ]
        Label{
            id:firstLabelID;
            text:"Fahrenheit";
            color:"#00BFFF";
            font.pointSize: 25;
            horizontalAlignment: Qt.AlignHCenter;
            verticalAlignment: Qt.AlignVCenter;
        }
        TextField{
            id:firstTextID;
            font.pointSize: 13;
            text:fahren;
            onEditingFinished:   {
                firstlabel1ID.text="";
                secondlabel1ID.text="";
                thirdlabel1ID.text="";
                fahrenheit=firstTextID.text;
                for(var i=0;i<firstTextID.length;i++)
                {
                    var fahren_check= /\b[\+-]?[0-9]*[\.]?[0-9]+([eE][\+-]?[0-9]+)?\b/;
                    if(fahren_check.test(firstTextID.text))
                    {
                        a=1;
                    }
                    else{
                        a=0;
                        break;
                    }
                }
                if(a==1)
                {
                    fahren=parseFloat(firstTextID.text);
                    secondTextID.text=Math.round((0.56* (fahren-32))*100)/100;
                    cels=secondTextID.text;
                    thirdTextID.text= Math.round((0.56 * (fahren-32) + 273.15)*100)/100;
                    kel=thirdTextID.text;
                    firstlabel1ID.text="";
                }
                else{
                    firstTextID.text="";
                    secondTextID.text="";
                    thirdTextID.text="";
                    inputMask=firstTextID.text;
                    onTextChanged: acceptableInput ? firstlabel1ID.text = qsTr("Please enter a digit") : firstlabel1ID.text = qsTr("Please enter a Digit")
                }
                a=0;
            }
        }
        Item{
            x:480;y:10;
            Label{
                id:firstlabel1ID;
                font.pointSize: 10;
                font.family: "Helvetica";
                color:"red";
            }
        }
    }

    RowLayout{
        id:mainrowID1;
        Layout.fillWidth: true;
        Layout.fillHeight: true;
        spacing: 125;
        Layout.alignment: Qt.AlignHCenter;
        states: [
            State{
                name: "portrait" ;
                PropertyChanges {target:mainrowID1;}
            },
            State{
                name: "landscape" ;
                PropertyChanges {target:mainrowID1;Layout.alignment: Qt.AlignLeft }
            }
        ]
        Label{
            id:secondLabelID;
            text:"Celsius"
            color:"#00BFFF"
            font.pointSize: 25;
            horizontalAlignment: Qt.AlignHCenter;
            verticalAlignment: Qt.AlignVCenter;
        }
        TextField{
            id:secondTextID;
            font.pointSize: 13
            text:cels;
            onEditingFinished:    {
                firstlabel1ID.text="";
                secondlabel1ID.text="";
                thirdlabel1ID.text="";
                celsius=secondTextID.text;
                for(var i=0;i<secondTextID.length;i++)
                {
                    var celsius_check=/\b[\+-]?[0-9]*[\.]?[0-9]+([eE][\+-]?[0-9]+)?\b/;
                    if(celsius_check.test(secondTextID.text))
                    {
                        a=1;
                    }
                    else{
                        a=0;
                        break;
                    }
                }
                if(a==1)
                {
                    cels=parseFloat(celsius)
                    thirdTextID.text=Math.round((cels + 273.15)*100)/100;
                    kel=thirdTextID.text;
                    firstTextID.text=Math.round(((1.8 * cels) + 32)*100)/100;
                    fahren=firstTextID.text;
                    secondlabel1ID.text="";
                }
                else{
                    secondTextID.text="";
                    firstTextID.text="";
                    thirdTextID.text="";
                    inputMask=secondTextID.text
                    onTextChanged: acceptableInput ? secondlabel1ID.text = qsTr("Please enter a digit") : secondlabel1ID.text = qsTr("Please enter a Digit")
                }
                a=0;
            }
        }
        Item{
            x:480;y:10;
            Label{
                id:secondlabel1ID;
                font.pointSize: 10;
                font.family: "Helvetica"
                y:10;
                color:"red"
            }
        }
    }


        RowLayout{
            id:mainrowID2;
            Layout.fillWidth: true;
            Layout.fillHeight: true;
            spacing: 140;
            Layout.alignment: Qt.AlignHCenter;
            states: [
                State{
                    name: "portrait" ;
                    PropertyChanges {target: mainrowID2;}
                },
                State{
                    name: "landscape" ;
                    PropertyChanges {target:mainrowID2;Layout.alignment: Qt.AlignLeft;}
                }
            ]
            Label{
                id:thirdLabelID;
                text:"Kelvin"
                color:"#00BFFF"
                font.pointSize: 25;
                horizontalAlignment: Qt.AlignHCenter;
                verticalAlignment: Qt.AlignVCenter;
            }
            TextField{
                id:thirdTextID;
                font.pointSize: 13;
                text:kel;
                onEditingFinished: {
                    firstlabel1ID.text="";
                    secondlabel1ID.text="";
                    thirdlabel1ID.text="";
                    kelvin=thirdTextID.text;
                    for(var i=0;i<thirdTextID.length;i++)
                    {
                        var kelvin_check=/\b[\+-]?[0-9]*[\.]?[0-9]+([eE][\+-]?[0-9]+)?\b/;
                        if(kelvin_check.test(thirdTextID.text))
                        {
                            a=1;
                        }
                        else{
                            a=0;
                            break;
                        }
                    }
                    if(a==1)
                    {
                        kel=parseFloat(kelvin)
                        firstTextID.text=Math.round((1.8*(kel-273.15)+32)*100)/100;
                        fahren=firstTextID.text;
                        secondTextID.text=Math.round((kel-273.15)*100)/100;
                        cels=secondTextID.text;
                        thirdlabel1ID.text="";
                    }
                    else{
                        thirdTextID.text="";
                        secondTextID.text="";
                        firstTextID.text="";
                        inputMask=thirdTextID.text
                        onTextChanged: acceptableInput ? thirdlabel1ID.text = qsTr("Please enter a digit") : thirdlabel1ID.text = qsTr("Please enter a Digit")
                    }
                    a=0;
                }
            }
            Item{
                x:480;y:10;
                Label{
                    id:thirdlabel1ID;
                    font.pointSize: 10;
                    font.family: "Helvetica"
                    color:"red"
                }
            }
        }

}

