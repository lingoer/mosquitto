import XCTest
import Mosquitto

final class MosquittoTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        mosquitto_lib_init()
//        mosquitto_loop_start(nil)
        XCTAssertEqual("1", "1")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

