//
//  FISTrivia.m
//  locationTrivia-Objects
//
//  Created by Kevin Tsai on 8/25/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivia.h"
#import "FISLocation.h"

@implementation FISTrivia

- (instancetype)initWithContent:(NSString *)content
                          Likes:(NSInteger)likes {
    self = [super init];
    
    if (self) {
        _content = content;
        _likes = likes;
    }
    
    return self;
}

- (instancetype) init {
    return [self initWithContent:@""
                           Likes:0];
}

@end
