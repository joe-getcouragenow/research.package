part of research_package_model;

/// The result object a Task creates
class RPTaskResult extends RPResult {
  Map<String, RPStepResult> _results;

  /// Returns an [RPTaskResult] with a given identifier and an empty map of results.
  ///
  /// [identifier] should always be the identifier of the "parent" task.
  /// It sets [startDate] to the ```DateTime.now()```. Since these objects are instantiated
  /// together with the Task it belongs to so it can be used for measuring
  /// how much time the participant spent the given Task.
  RPTaskResult(String identifier) : super(identifier) {
    this._results = Map<String, RPStepResult>();
    startDate = DateTime.now();
  }

  /// The results in of a Task in a map.
  ///
  /// Each entry represents a Step's result ([RPStepResult]).
  /// The keys are strings with the identifiers of the corresponding Step.
  Map<String, RPStepResult> get results => _results;

  /// Returns result value for the given identifier from the [results] map
  RPStepResult getStepResultForIdentifier(String identifier) => _results[identifier];

  /// Adds a result to the result map with the given identifier.
  void setStepResultForIdentifier(String identifier, RPStepResult stepResult) {
    _results[identifier] = stepResult;
  }
}
