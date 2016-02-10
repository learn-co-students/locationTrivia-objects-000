//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Molly Gingras on 2/10/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)init{
    self = [self initWithName:@"" latitude:0.0 longitude:0.0];
    return self;
}

- (instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude{
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length{
    if (length < self.name.length) {
        return [self.name substringToIndex:length];
    }
    return self.name;
}

- (BOOL)hasValidData{
    if ([self hasValidName] && [self hasValidLatitude] && [self hasValidLongitude]) {
        return YES;
    }
    return NO;
}

- (BOOL)hasValidName{
    if (self.name && self.name.length) {
        return YES;
    }
    return NO;
}

- (BOOL)hasValidLatitude{
    if (self.latitude >= -90.0 && self.latitude <= 90.0) {
        return YES;
    }
    return NO;
}

- (BOOL)hasValidLongitude{
    if (self.longitude > -180.0 && self.longitude <= 180.0) {
        return YES;
    }
    return NO;
}

- (FISTrivium *)triviumWithMostLikes{
    if (self.trivia.count) {
        NSSortDescriptor *sortByLikes = [NSSortDescriptor sortDescriptorWithKey:@"likes" ascending:NO];
        NSArray *triviaByLikes = [self.trivia sortedArrayUsingDescriptors:@[sortByLikes]];
        return triviaByLikes[0];
    }
    return nil;
}


@end
