enum PausableState {
    case playing
    case paused(pauseTime: TimeInterval) // Adding `pauseTime` as an associated value to `paused`
}

// Example usage:
var currentState: PausableState = .playing
currentState = .paused(pauseTime: 10.0)

// Accessing properties:
switch currentState {
case .playing:
    print("Currently playing")
case .paused(let pauseTime):
    print("Paused at time \(pauseTime)")
}
