//
//  main.m
//  Pig-Latin
//
//  Created by Alex Bearinger on 2017-01-13.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Pig_Latin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *start = @"kale";
        NSString *result = [start stringByPigLatinization];
        NSLog(@"%@",result);
        
        
        start = @"chips";
        result = [start stringByPigLatinization];
        NSLog(@"%@",result);
        
    }
    return 0;
}
