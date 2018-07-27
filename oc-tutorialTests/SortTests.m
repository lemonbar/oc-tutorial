//
//  SortTests.m
//  oc-tutorialTests
//
//  Created by Li Meng on 2018/7/24.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SelectionSort.h"
#import "InsertionSort.h"
#import "BubbleSort.h"
#import "ShellSort.h"

@interface SortTests : XCTestCase
{
    NSArray *array;
}

@end

@implementation SortTests

- (void)setUp {
    [super setUp];
    array = @[@20,@5,@3,@13,@17,@30,@4,@1,@2,@6,@7,@8,@9,@10];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testShellSort {
    ShellSort *shellSort = [[ShellSort alloc] initWithArray:array];
    [shellSort sort];
}

-(void)testBubbleSort{
    BubbleSort *bubSort = [[BubbleSort alloc] initWithArray:array];
    [bubSort sort];
}

- (void)testInsertionSort {
    InsertionSort *insSort = [[InsertionSort alloc] initWithArray:array];
    [insSort sort];
}

- (void)testSelectionSort {
    SelectionSort *selSort = [[SelectionSort alloc] initWithArray:array];
    [selSort sort];
}

- (void)testExample {
    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
