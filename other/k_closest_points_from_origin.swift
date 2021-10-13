import Foundation

class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var points: [Coord] = points.map {
            return Coord(x: $0[0], y: $0[1])
        } 
        points = points.sorted(by: { cur, nxt -> Bool in
            cur.distanceFromOrigin < nxt.distanceFromOrigin
        })
        return points[0..<k].map {
            return [$0.x, $0.y]
        }
    }
    
    class Coord {
        var x:Int = 0
        var y:Int = 0
        var distanceFromOrigin: Double = 0.0
        
        init(x: Int, y: Int) {
            self.x = x
            self.y = y
            self.distanceFromOrigin = getDistanceFromOrigin()
        }
        
        func getDistanceFromOrigin() -> Double {
            return sqrt(Double(x * x) + Double(y * y))
        }
    }
}