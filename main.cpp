#include <QApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    app.setWindowIcon(QIcon("./360Imaging_logo.png"));
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
