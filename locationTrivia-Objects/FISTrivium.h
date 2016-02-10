//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Danny Fenjves on 9/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property(strong,nonatomic) NSString *content;

@property(nonatomic)NSUInteger likes;

-(instancetype)init;

-(instancetype)initWithContent:(NSString *)content likes:(NSUInteger)likes;

@end
