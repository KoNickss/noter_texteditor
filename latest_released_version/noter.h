#ifndef NOTER_H
#define NOTER_H

#include <QMainWindow>
#include <QFile>
#include <QFileDialog>
#include <QTextStream>
#include <QTimer>
#include <QDialog>
#include <QMessageBox>
QT_BEGIN_NAMESPACE
namespace Ui { class Noter; }
QT_END_NAMESPACE


class Noter : public QMainWindow
{
    Q_OBJECT

public:
    Noter(QWidget *parent = nullptr);
    ~Noter();
    QString fisierul="";
    bool checkwrite=false;


public slots:
    void myfunction();

private slots:
    void on_actionNew_triggered();

    void on_actionOpen_triggered();

    void on_actionSave_triggered();


    void on_actionUpdate_triggered();

    void on_actionClose_triggered();

    void on_actionOpen_file_as_root_triggered();

private:
    Ui::Noter *ui;
    QTimer *timer;
    bool can_be_closed=true;

};
#endif // NOTER_H
