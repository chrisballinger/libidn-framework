//
//  libidnTests.m
//  libidnTests
//
//  Created by Christopher Ballinger on 9/23/15.
//  Copyright © 2015 Chris Ballinger. All rights reserved.
//

#import <XCTest/XCTest.h>
@import libidn;

@interface libidnTests : XCTestCase

@end

@implementation libidnTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPrepNode {
    NSString *node = [NSString idn_prepNode:@"asdf"];
    XCTAssertNotNil(node);
    NSString *nilNode = [NSString idn_prepNode:@"\n\n\n\n\n"];
    XCTAssertNil(nilNode);
}


@end
