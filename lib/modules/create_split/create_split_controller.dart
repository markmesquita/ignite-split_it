class CreateSplitController {
  String eventName = "";
  String personName = "";

  bool enableNavigateButton() {
    return eventName.isNotEmpty;
  }

  void setEventName(String name) {
    eventName = name;
  }

  void setPersonName(String name) {
    personName = name;
  }
}
