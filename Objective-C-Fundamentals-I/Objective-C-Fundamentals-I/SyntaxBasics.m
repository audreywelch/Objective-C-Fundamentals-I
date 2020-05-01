//
//  SyntaxBasics.m
//  Objective-C-Fundamentals-I
//
//  Created by Audrey Welch on 5/1/20.
//  Copyright © 2020 Audrey Welch. All rights reserved.
//

// Rule 2: Always import the header file you awnt to use, do this
// in your .m files
#import "SyntaxBasics.h"

@implementation SyntaxBasics

// Swift
// init(largeNumber: Int) {
//      self.largeNumber = largeNumber
// }

- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber {
    self = [super init]; // calling NSObject's init method
    if (self) {          // prevent doing any work if self is nil
        
        // Rule 1: Don't use self.propertyName in init/dealloc methods
        // Always use the _propertyName to assign the backing
        // instance variable for a property
        _largeNumber = largeNumber;
    }
    return self;
}

- (void)explorePrimitives {
    
    //
    // Primitives - number types
    //
    NSLog(@"-----------------Primitives-----------------");
    // Integer
    // 4 bytes wide, -2,147,483,648 through 2,147,483,647
    int age = 34;
    NSLog(@"Hello! You are %d years old.", age);
    
    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    long aLong = 922337347586L;
    NSLog(@"%ld", aLong);
    
    // Single precision floating-oint, 32-bit number
    float aFloat = -21.09f;
    NSLog(@"%f", aFloat);
    NSLog(@"%0.2f", aFloat); // rounds to 2 decimal points
    
    // Double precision floating-point, 64-bit number
    double aDouble = -21.09;
    NSLog(@"%.2f", aDouble);
    NSLog(@"%e", aDouble);
    
    // Boolean
    // only two value choices, YES for true, NO for false
    // let isOn = true
    
    BOOL isBool = NO; // YES;
    NSLog(@"%d", isBool); // prints 1 for YES, 0 for NO
    NSLog(@"%@", isBool ? @"YES" : @"NO");
    
    //
    // MATH
    //
    
    // All standard arithmetic operators apply: +, -, *, /, %
    
    // Integer division, result is always a whole number and not rounded
    int integerResult = 5 / 4;
    NSLog(@"Integer division: %d", integerResult);
    
    // Double division, 1 double and 1 int operand, result is promoted to double
    double doubleResult = 5.0 / 4;
    NSLog(@"Floating-point division: %f", doubleResult);
    
    // Floating point imprecision
    // Print statements show floating point numbers aren't as precise as they appear
    NSLog(@"$.17f", .1);
    NSLog(@"%.17f", 4.2 - 4.1); // actual answer: 0.10000000000000053
    
    //
    // NSInteger
    //
    
    // autosizes itself based on current platform
    NSInteger anInteger = -6;
    NSUInteger aPositiveInteger = 8;
    NSLog(@"anInteger: %ld", (long)anInteger);
    NSLog(@"aPositiveInteger: %ld", (long)aPositiveInteger);
    
    NSLog(@"-----------------End Primitives-----------------\n\n");
}

- (void)exploreObjects {
    //
    // Objects (class-based types)
    //
    NSLog(@"-----------------Objects-----------------");
    
    // NSString
    
    NSString *lambda = @"Lambda School";
    NSLog(@"%@", lambda);
    
    // String concatenation/interpolation
    
    // Swift
    // let width = 94
    // let label = "The width is \(width)" + " inches"
    
    NSString *label = @"The width is";
    int width = 94;
    NSString *widthLabel = [NSString stringWithFormat:@"%@ %d", label, width];
    NSLog(@"%@", widthLabel);
    
    // id type used to store an object of any type
    // Swift
    // let anyObject: Any = "Hello"
    
    id mysteryObject = @"An NSString object";
    NSLog(@"%@", [mysteryObject description]);
    mysteryObject = @{@"model": @"Ford", @"year": @1967};
    NSLog(@"%@", [mysteryObject description]);
    
    NSLog(@"-----------------End Objects-----------------");
}

@end
