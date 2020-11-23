#include "noter.h"
#include "./ui_noter.h"
#include <QtDebug>

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
    }
    }
}

Noter::~Noter()
{
    delete ui;
}

void Noter::myfunction()
{
    if(fisierul != QString("")){
        QFile fisier(fisierul);
        fisier.open(QIODevice::ReadWrite | QFile::Text);
        QTextStream scriere (&fisier);
        QString textDeScris = ui->Note->toPlainText();
        scriere << "";
        scriere << textDeScris;
        fisier.close();
    }

}


void Noter::on_actionNew_triggered()
{
    fisierul.clear();
    ui->Note->setPlainText(QString(""));
    setWindowTitle("Noter");
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
}

void Noter::on_open_at_su()
{
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
}
