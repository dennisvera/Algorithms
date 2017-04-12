//: Playground - noun: a place where people can play

import UIKit

// Wrapp around array alogorithm


// Assume we have a list of tracks
let tracks = ["a", "b", "c", "d", "e"]

// Algorithm should return this playlist if we select track "d"
["d", "e", "a", "b", "c"]

var playlist = [String]()
let selectedtrack = "d"
var priorTracks = [String]()

for track in tracks {
    if track == selectedtrack || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}

print(playlist + priorTracks)


// Solving algorithm with prefix & suffix

let index = tracks.index(where: {return $0 == selectedtrack})
let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)
let playlistArray = suffixArray + prefixArray

print(playlistArray)