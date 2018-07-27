//
//  CallbackTests.m
//  oc-tutorialTests
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CallbackTarget.h"
#import "CallbackHelper.h"
#import "CallbackNotification.h"

@interface CallbackTests : XCTestCase

@end

@implementation CallbackTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testCallbackTarget{
    CallbackTarget *logger = [[CallbackTarget alloc] init];
    
    __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] run];
}

-(void)testCallbackHelper{
    CallbackHelper *cbHelper = [[CallbackHelper alloc] init];
    
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com/"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request delegate:cbHelper startImmediately:YES];
    
    [[NSRunLoop currentRunLoop] run];
}

-(void)testCallbackNotification{
    CallbackNotification * cbn = [[CallbackNotification alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:cbn selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
    
    [[NSRunLoop currentRunLoop] run];
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
