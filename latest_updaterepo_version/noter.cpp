#include "noter.h"
#include "./ui_noter.h"
#include <QtDebug>
#include <QProcess>
#include <zconf.h>

Noter::Noter(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::Noter)
{
    ui->setupUi(this);
    this->setCentralWidget(ui->Note);
    timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()),this,SLOT(myfunction()));
    timer->start(100);
    qDebug() << QCoreApplication::arguments().size();
    system("mkdir ~/.local/share/noter");
    if(QCoreApplication::arguments().size() > 1){
    if(QCoreApplication::arguments().at(1)[0]=='/'){
        fisierul = QCoreApplication::arguments().at(1);
        QString numeleFisierului = fisierul;
        setWindowTitle("Noter - " + numeleFisierului);
        QFile fisier(numeleFisierului);
        if(!fisier.open(QIODevice::ReadOnly | QFile::Text)){
            QMessageBox::warning(this, "Error", "Unable to open file");
            return;
        }
        QTextStream citire (&fisier);
        QString textDeCitit = citire.readAll();
        ui->Note->setPlainText(textDeCitit);
        fisier.close();
        checkwrite=true;
        if(geteuid()==0){
            system("cp " + fisierul.toUtf8() + " ~/.local/share/noter/*");
            qDebug() << "___---___";
        }
    }
    }
    ui->Note->setStyleSheet("background-color: rgba(255, 255, 255, 10); font: 14pt 'Ubuntu';");


}

Noter::~Noter()
{
    while(!can_be_closed){

    }
    delete ui;
}

void Noter::myfunction()
{
    if(fisierul != QString("")){
        QFile fisier(fisierul);
        fisier.open(QIODevice::ReadWrite | QFile::Text);
        QTextStream scriere (&fisier);
        QString textDeScris = ui->Note->toPlainText();
        can_be_closed=false;
        system("echo '' > "+fisierul.toUtf8());
        scriere << textDeScris.toUtf8();
        fisier.close();
        can_be_closed=true;
    }
    if(checkwrite){
        qDebug() << "-----------------";
        QFile fisier(fisierul);
        if(!fisier.open(QIODevice::ReadWrite | QFile::Text)){
            QMessageBox::warning(this, "Warning", "You do not have the permission to modify this file, you can still view it but all changes regarding it will automatically be discarded.");
            checkwrite=false;
            ui->Note->setReadOnly(true);
        }else{
            checkwrite=false;
        }
        fisier.close();
    }

}


void Noter::on_actionNew_triggered()
{
    fisierul.clear();
    ui->Note->setPlainText(QString(""));
    setWindowTitle("Noter");
    ui->Note->setReadOnly(false);
}

void Noter::on_actionOpen_triggered()
{
    QString numeleFisierului = QFileDialog::getOpenFileName(this , "Choose File" , "~/");
    setWindowTitle("Noter - " + numeleFisierului);
    QFile fisier(numeleFisierului);
    if(!fisier.open(QIODevice::ReadOnly | QFile::Text)){
        QMessageBox::warning(this, "Error", "Unable to open file");
        return;
    }
    QTextStream citire (&fisier);
    QString textDeCitit = citire.readAll();
    ui->Note->setPlainText(textDeCitit);
    fisier.close();
    fisierul = numeleFisierului;
    ui->Note->setReadOnly(false);
    checkwrite=true;
    qDebug() << "............";
}



void Noter::on_actionSave_triggered()
{
    QString numeleFisierului = QFileDialog::getSaveFileName(this , "Choose file name to create under" , "~/");
    setWindowTitle("Noter - " + numeleFisierului);
    QFile fisier(numeleFisierului);
    if(!fisier.open(QIODevice::ReadWrite | QFile::Text)){
        QMessageBox::warning(this, "Error", "Unable to create file");
        return;
    }
    QTextStream scriere (&fisier);
    QString textDeScris = ui->Note->toPlainText();
    scriere << textDeScris;
    fisier.close();
    fisierul = numeleFisierului;
    ui->Note->setReadOnly(false);
}

void Noter::on_actionUpdate_triggered()
{
    QProcess askPermission;
    askPermission.start("kdialog --password \"Please enter your password to update\"");
    askPermission.waitForReadyRead(-1);
    QByteArray sudoPwd = askPermission.readAll().simplified();
    askPermission.close();
    qDebug() << sudoPwd;
    system("echo " + sudoPwd + " | sudo -S noter -u");
}

void Noter::on_actionClose_triggered()
{
    exit(EXIT_FAILURE);
}

void Noter::on_actionOpen_file_as_root_triggered()
{
    QProcess askPermission;
    askPermission.start("kdialog --password \"Please enter your password\"");
    askPermission.waitForReadyRead(-1);
    QByteArray sudoPwd = askPermission.readAll().simplified();
    askPermission.close();
    system("echo " + sudoPwd + " | sudo -S cp " + fisierul.toUtf8() + " ~/.local/share/noter/");
    system("echo " + sudoPwd + " | sudo -S noter " + fisierul.toUtf8() + " &");
    exit(EXIT_FAILURE);
    delete ui;
}
