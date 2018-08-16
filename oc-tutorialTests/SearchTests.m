//
//  SearchTests.m
//  oc-tutorialTests
//
//  Created by Li Meng on 2018/8/16.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BST.h"

@interface SearchTests : XCTestCase
{
    NSArray *array;
}

@end

@implementation SearchTests

- (void)setUp {
    [super setUp];
    array = @[@20,@5,@3,@13,@17,@30,@4,@1,@2,@6,@7,@8,@9,@10];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBSTInit {
    BST *bst = [[BST alloc] initWithArray:array];
    Node *root = [bst getRoot];
    NSLog(@"%@",root);
    
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
