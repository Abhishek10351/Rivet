import sys
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from pathlib import Path


def main():
    app = QGuiApplication()
    engine = QQmlApplicationEngine()
    root = Path(__file__).resolve().parents[2] / "UI"

    engine.addImportPath(str(root))
    engine.load(str(root / "UIContent" / "App.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    exit_code = app.exec()
    del engine
    sys.exit(exit_code)

    sys.exit(app.exec())


main()
