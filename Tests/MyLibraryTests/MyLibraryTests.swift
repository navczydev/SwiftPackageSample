import XCTest
@testable import MyLibrary
import SwiftUI

final class MyLibraryTests: XCTestCase {
    @State private var text:String
    
    public init(text:String) {
        self.text = text
        super.init()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(MyLibrary().text, "Hello, World!")
        var body: some View{
            MyLibrary.MainTextField(placeholder:"Testing", text: $text)
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
