#include "noter.h"
#include <zconf.h>
#include <QApplication>
#include <QDebug>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Noter w;
    if(QCoreApplication::arguments().size() > 1){
        if(QCoreApplication::arguments().at(1)=="-lu"){
            system("clear");
            qDebug() << "Updating, please stand by..." << Qt::endl;
            if(geteuid()!=0){
                qDebug() << "Please run the update as root for it to complete";
                qDebug() << "Use Control+C to exit from this screen";
            }else{
                system("curl https://noterupdates.netlify.app/noter > /usr/bin/noter.1");
                system("touch /usr/bin/up");
                system("echo rm /usr/bin/noter > /usr/bin/up");
                system("echo mv /usr/bin/noter.1 /usr/bin/noter >> /usr/bin/up");
                system("echo chmod 755 /usr/bin/noter >> /usr/bin/up");
                system("echo rm /usr/bin/up >> /usr/bin/up");
                system("chmod 755 /usr/bin/up ; /usr/bin/up");
                qDebug() << "Routine finished, use Control+C to exit from this screen";
            }
        }else{
            w.show();
        }
    }else{
        w.show();
    }
    return a.exec();
}

//made by konicks, with love, for the people
