#include "mainwindow.h"
#include <QApplication>
#include <qdebug.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

	 try {
		MainWindow w;
		w.show();
		return a.exec();
	 }
	 catch (const std::runtime_error& err) {
		qDebug() << err.what();
		return 0;
	 }
}
