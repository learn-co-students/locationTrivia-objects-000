//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Danny Fenjves on 9/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(instancetype)init{
    self = [self initWithName:@"" latitude:0.0 longitude:0.0];
    return self;
}

-(instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat) longitude{
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length{
    if ([self.name length] < length) {
        return self.name;
        
    } else {
        NSString *truncatedString = [self.name substringToIndex:length];
        return truncatedString;
    }
    
}

-(BOOL)hasValidData{
    if ([self.name isEqualToString:@""]|| !self.name) {
        return NO;
    }
    if (self.latitude < -90.0 || self.latitude > 90.0) {
        return NO;
    }
    if (self.longitude <= -180.0 || self.longitude > 180.0) {
        return NO;
    }
    
    return YES;
}

-(FISTrivium *)triviumWithMostLikes{
    if ([self.trivia count] > 0) {
        NSSortDescriptor *sortByLikes = [NSSortDescriptor sortDescriptorWithKey:@"likes" ascending:NO];
        NSArray *sortedTrivium = [self.trivia sortedArrayUsingDescriptors:@[sortByLikes]];
        return sortedTrivium[0];
    } else {
        return nil;
    }
    
}


@end
