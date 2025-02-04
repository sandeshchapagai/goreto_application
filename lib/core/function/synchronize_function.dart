synchronizeFunction(
        {required Function() onRun, int milliseconds = 100}) async =>
    await Future.delayed(Duration(milliseconds: milliseconds), onRun);
