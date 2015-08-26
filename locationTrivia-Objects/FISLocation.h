//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Kevin Tsai on 8/25/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISLocation : NSObject

@property (strong, nonatomic) NSString* name;
@property (nonatomic) NSNumber* latitude;
@property (nonatomic) NSNumber* longitude;
@property (strong, nonatomic) NSMutableArray* TriviaItems;

- (instancetype)initWithName:(NSString *)name
                    latitude:(NSNumber *)latitude
                   longitude:(NSNumber *)longitude;
- (NSString *)returnName;
- (NSString *)shortenedNameToLength:(NSInteger)count;
- (BOOL) verifyLocation;

@end
