//
//  RottenTomatoesClient.h
//  tomatoTest
//
//  Created by John on 10/18/13.
//  Copyright (c) 2013 John. All rights reserved.
//

#import "AFHTTPClient.h"

@interface RottenTomatoesClient : AFHTTPClient

//-(void) boxOffice;

-(void) boxOfficeWithSuccess:(void (^)(AFHTTPRequestOperation *operation, NSArray *movies))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
