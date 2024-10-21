import Testing

struct MagicianInTrainingTests {
    
    @Test func testGetCardTest() async throws {
        let stack = (1...10).shuffled()
        guard let idx = stack.indices.randomElement() else { fatalError("test suite failure") }
        #expect(getCard(at: idx, from: stack) == stack[idx])
    }
    
    @Test func testSetCardTest() async throws {
        let stack = [9, 4, 3, 6, 1, 7, 2, 8, 5]
        let idx = 5
        #expect(setCard(at: idx, in: stack, to: 10) == [9, 4, 3, 6, 1, 10, 2, 8, 5])
    }
    
    @Test func testSetCardIndexTooLowTest() async throws {
        let stack = [9, 4, 3, 6, 1, 7, 2, 8, 5]
        let idx = -3
        #expect(setCard(at: idx, in: stack, to: 10) == stack)
    }
    
    @Test func testSetCardIndexTooHighTest() async throws {
        let stack = [9, 4, 3, 6, 1, 7, 2, 8, 5]
        let idx = 50
        #expect(setCard(at: idx, in: stack, to: 10) == stack)
    }
    
    @Test func testInsertAtTopTest() async throws {
        let stack = [1, 7, 5, 8, 3, 9, 6, 4, 2]
        #expect(insert(10, atTopOf: stack) == [1, 7, 5, 8, 3, 9, 6, 4, 2, 10])
    }
    
    @Test func testRemoveCardTest() async throws {
        let stack = [9, 2, 1, 6, 5, 7, 4, 3, 8]
        let idx = 2
        #expect(removeCard(at: idx, from: stack) == [9, 2, 6, 5, 7, 4, 3, 8])
        
    }
    
    @Test func testRemoveCardIndexTooLowTest() async throws {
        let stack = [9, 2, 1, 6, 5, 7, 4, 3, 8]
        let idx = -2
        #expect(removeCard(at: idx, from: stack) == stack)
    }
    
    @Test func testRemoveCardIndexTooHighTest() async throws {
        let stack = [9, 2, 1, 6, 5, 7, 4, 3, 8]
        let idx = 20
        #expect(removeCard(at: idx, from: stack) == stack)
    }
    
    @Test func testRemoveTopCardTest() async throws {
        let stack = [2, 7, 4, 6, 9, 1, 8, 3, 5]
        #expect(removeTopCard(stack) == [2, 7, 4, 6, 9, 1, 8, 3])
    }
    
    @Test func testRemoveTopCardFromEmptyStackTest() async throws {
        let stack = [Int]()
        #expect(removeTopCard(stack) == stack)
    }
    
    @Test func testInsertAtBottomTest() async throws {
        let stack = [4, 3, 8, 9, 1, 7, 6, 5, 2]
        #expect(insert(10, atBottomOf: stack) == [10, 4, 3, 8, 9, 1, 7, 6, 5, 2])
    }
    
    @Test func testRemoveBottomCardTest() async throws {
        let stack = [8, 7, 4, 2, 6, 5, 3, 1, 9]
        #expect(removeBottomCard(stack) == [7, 4, 2, 6, 5, 3, 1, 9])
    }
    
    @Test func testRemoveBottomCardFromEmptyStackTest() async throws {
        let stack = [Int]()
        #expect(removeTopCard(stack) == stack)
    }
    
    @Test func testCheckSizeTrueTest() async throws {
        let stack = [6, 9, 7, 8, 2, 3, 4, 5, 1]
        #expect(checkSizeOfStack(stack, 9) == true)
    }
    
    @Test func testCheckSizeFalseTest() async throws {
        let stack = [6, 9, 7, 8, 2, 3, 4, 5, 1]
        #expect(checkSizeOfStack(removeBottomCard(stack), 9) == false)
    }
    
    @Test func testEvenCardCountTest() async throws {
        let stack = [4, 6, 3, 7, 1, 9, 5, 8, 2]
        #expect(evenCardCount(stack) == 4)
    }
    
    @Test func testEvenCardCountZeroTest() async throws {
        let stack = [7, 3, 7, 1, 5, 5, 3, 9, 9]
        #expect(evenCardCount(stack) == 0)
    }
    
}
