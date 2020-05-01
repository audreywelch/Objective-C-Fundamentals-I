//
//  SyntaxBasics.h
//  Objective-C-Fundamentals-I
//
//  Created by Audrey Welch on 5/1/20.
//  Copyright © 2020 Audrey Welch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Objective-c is based on the C programming language
// C uses pointers and it doesn't have objects (functions and structures)
// Objective-c has added objects

// .h = header file (functions and classes are declared)
// .m = implementation file (functions are defined)

// Swift
// class SyntaxBasics {
//      var largeNumber: Int
//
//      init(largeNumber: Int) {
//          self.largeNumber = largeNumber
//      }
// }

// A few shortcuts:
// Assistant Editor: Command + Control + Option + Enter
// Show related file: Control + Command + Up/Down Arrow key

@interface SyntaxBasics : NSObject

@property NSNumber *largeNumber; // pointer uses *, we use it for any object

// Swift
// init(largeNuumber: Int)

// - or + (- = instance method)
// (instancetype) = return type (older code: id)

// initializers at the top

- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber;

// methods

// Swift
// func explorePrimitives() {}

// (void) = no return value
- (void)explorePrimitives;
- (void)exploreObjects;
//- (void)exploreCollectionsWithArray:(NSArray *)shipCaptains;
//- (void)exploreNumbers;

@end

NS_ASSUME_NONNULL_END
