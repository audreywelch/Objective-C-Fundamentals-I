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
        SyntaxBasics *basics = [[SyntaxBasics alloc] initWithLargeNumber:@34340939];
        
        // Swift
        // print("Large Number: \(basics.largeNumber)")
        
        // String Tokens (order matters)
        // %@ = object: @"objc string"
        // %s = c string "hello"
        // %d or %i = int
        // %ld or %li = long integer
        NSLog(@"Large Number: %@", basics.largeNumber);
        
        
    }
    return 0;
}
