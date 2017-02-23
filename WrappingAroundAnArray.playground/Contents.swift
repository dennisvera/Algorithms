//: Playground - noun: a place where people can play

import UIKit

//assume you have a list of tracks
let tracks = ["a", "b", "c", "d", "e"]

//algorithm should return this playlist if we select track "d"
["d", "e", "a", "b", "c"]

let selectedTrack = "d"

var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    
    } else {
        priorTracks.append(track)
    }
}

priorTracks
playlist

playlist + priorTracks


//another technique to wrapp the array
let index = tracks.index(where: {return $0 == selectedTrack})
let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)

let array = suffixArray + prefixArray