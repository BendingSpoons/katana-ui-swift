import XCTest
import Katana

class UIViewsTest: XCTestCase {

  func testAddAndRemoveAll() {

    let r = UIView()

    let child = r.addChild { UIView() }
    XCTAssert(r.children().count == 1)
    XCTAssert(child.children().isEmpty)

    r.removeAllChildren()
    XCTAssert(r.children().isEmpty)
  }

  func testRemove() {

    let r = UIView()
    _ = r.addChild { UIView() }
    _ = r.addChild { UIView() }
    _ = r.addChild { UIView() }
    r.removeChild(r.children()[0])
    let children = r.children()
    XCTAssert(children.count == 2)
  }
}
