//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Danny Fenjves on 9/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"

@interface FISLocation : NSObject

@property(strong, nonatomic)NSString *name;

@property(nonatomic)CGFloat latitude;

@property(nonatomic)CGFloat longitude;

@property(strong, nonatomic)NSMutableArray *trivia;

-(instancetype)init;

-(instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat) longitude;

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length;

-(BOOL)hasValidData;

-(FISTrivium *)triviumWithMostLikes;



//init — the default initializer that will be overridden,
//initWithName:latitude:longitude: — a designated initializer,
//stringByTruncatingNameToLength: which takes one NSUInteger argument called length and returns an NSString,
//hasValidData which takes no arguments and returns a BOOL, and
//triviumWithMostLikes which takes no arguments and returns a FISTrivium object.
//Define the initializers to assign to self a call of [super init] and return self.
//
//Define the other three methods to return nil.

@end
