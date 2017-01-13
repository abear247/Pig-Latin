//
//  NSString+Pig_Latin.m
//  Pig-Latin
//
//  Created by Alex Bearinger on 2017-01-13.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "NSString+Pig_Latin.h"

@implementation NSString (Pig_Latin)

-(NSString *)stringByPigLatinization{
    NSString *consanentEnding = @"ay";
    NSString *vowelEnding = @"yay";
    NSMutableArray *characters = [NSMutableArray new];
    NSMutableArray *consonants = [NSMutableArray new];
    NSString *pigLatin;
    int i = 0;
    for (int i = 0;i<self.length;++i){
        NSString *letter = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [characters addObject:letter];
    }
    NSString *vowels = @"aeiou";
    NSString *first = characters.firstObject;
    if ([vowels containsString:first]){
        return [self stringByAppendingString:vowelEnding];
        
    }
    
    for (NSString *letter in characters){
        if([vowels containsString:letter])
            break;
        [consonants addObject:letter];
        ++i;
    }
    NSRange range = NSMakeRange(i, self.length-i);
    pigLatin = [self substringWithRange:range];
    NSString *pig = [consonants componentsJoinedByString:@""];
    first = [[pigLatin stringByAppendingString:pig] stringByAppendingString:consanentEnding];
    return first;
}

@end
