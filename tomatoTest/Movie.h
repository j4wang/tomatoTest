//
//  Movie.h
//  tomatoTest
//
//  Created by John on 10/19/13.
//  Copyright (c) 2013 John. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (weak, nonatomic) NSString *title;
@property (weak, nonatomic) NSString *stars;

// factory method
+ (NSArray *)moviesWithJson:(NSArray *)jsonArray;

@end
