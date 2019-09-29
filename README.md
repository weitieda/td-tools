# TDTools

Personal commonly userd utilities


### DiskCache
```
struct Timeline: Codable {
    let tweets: [String]
}

let path = URL(fileURLWithPath: NSTemporaryDirectory())
let disk = DiskStorage(path: path)
let storage = CodableStorage(storage: disk)

let timeline = Timeline(tweets: ["Hello", "World", "!!!"])

do {
    try storage.save(timeline, for: "timeline")
    let cached: Timeline = try storage.fetch(for: "timeline")
    print(cached)
} catch {
    print(error)
}
```
