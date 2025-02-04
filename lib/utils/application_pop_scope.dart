class ApplicationPopScope {
  static invokePop({required bool didPop, required Function fxn}) {
    if (!didPop) fxn();
  }
}
