import UIKit

/// `Algorithm:` - Wrapp around array

/// Assume we have a list of tracks
let tracks = ["a", "b", "c", "d", "e", "f", "g"]

/// Algorithm should return this playlist if we select track "d"
["d", "e", "a", "b", "c"]

let selectedtrack = "d"
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
  if track == selectedtrack || playlist.count > 0 {
    playlist.append(track)
  } else {
    priorTracks.append(track)
  }
}

print(playlist + priorTracks)

/// Another solution
let index = tracks.lastIndex(where: { return $0 == selectedtrack })
let prefixArray = tracks.prefix(upTo: index ?? 0)
let suffixArray = tracks.suffix(from: index ?? 0)

print(suffixArray + prefixArray)
