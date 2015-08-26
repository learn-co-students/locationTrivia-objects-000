//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Kevin Tsai on 8/25/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)initWithName:(NSString *)name
                    latitude:(NSNumber *)latitude
                   longitude:(NSNumber *)longitude{
    
    self = [super init];
    
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
    }
    
    return self;
}

- (NSString *)returnName {
    return self.name;
}

- (NSString *)shortenedNameToLength:(NSInteger)count {
    NSLog(@"!!!!!!!!!!!!!!!!!!!!!!!!!");
    NSString *returnedName = self.name;

    if (count <0) {
        NSLog(@"%li, %@", count, returnedName);
        return returnedName;
    }
    
    NSString *shortName = [returnedName substringToIndex:count];
    
    NSLog(@"%li, %@", count, shortName);
    
    return shortName;
}


- (BOOL) verifyLocation {
    NSLog(@"%@, %@, %@", self.name, self.latitude, self.longitude);
    
    if ([self.name length] > 0 && [self.latitude intValue] > -90 && [self.latitude intValue] < 90 && [self.longitude intValue] > -180 && [self.longitude intValue] < 180) {
            NSLog(@"YES");
            return YES;
        }
    
    NSLog(@"NO");
    return NO;
}


@end
