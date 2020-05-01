//
//  main.m
//  Objective-C-Fundamentals-I
//
//  Created by Audrey Welch on 5/1/20.
//  Copyright © 2020 Audrey Welch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SyntaxBasics.h"


// return-type <name_of_function>(parameter, list) {}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, Audrey!");
        
        // Swift
        // let basics = SwiftBasics()
        
        // Initialization is two steps
        // 1. Allocating the memory (buying land)
        // 2. Initializing the object (building a house)
        SyntaxBasics *basics = [[SyntaxBasics alloc] initWithLargeNumber:@34340939];
        
        // Swift
        // print("Large Number: \(basics.largeNumber)")
        
        // String Tokens (order matters)
        // %@ = object: @"objc string"
        // %s = c string "hello"
        // %d or %i = int
        // %ld or %li = long integer
        NSLog(@"Large Number: %@", basics.largeNumber);
        
        // Swift
        // basics.explorePrimitives()
        
        [basics explorePrimitives];
        [basics exploreObjects];
        
        // Literals
        // Array: @[]
        // Dictionary: @{ key : value }
        // NSNumber: @123
        
//        [basics exploreCollectionsWithArray:@[@"Malcolm Reynolds",
//                                              @"Jean-Luc Picard",
//                                              @"James T. Kirk",
//                                              @"Kathryn Janeway"]];
        
        // [basics exploreNumbers];
    }
    return 0;
}
