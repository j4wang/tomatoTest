//
//  RottenTomatoesClient.m
//  tomatoTest
//
//  Created by John on 10/18/13.
//  Copyright (c) 2013 John. All rights reserved.
//

#import "RottenTomatoesClient.h"
#import "AFNetworking.h"

@implementation RottenTomatoesClient

-(id) init {
    self = [super initWithBaseURL:[NSURL URLWithString:@"http://api.rottentomatoes.com/api/public/v1.0/"]];
    
    if (self) {
        // register to deserialize JSON object
        [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    }
    
    return self;
}

-(void) boxOffice {
    [self getPath:@"lists/movies/box_office.json" parameters:@{@"apikey": @"g9au4hv6khv6wzvzgt55gpqs"} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        // deserialization code
        NSArray *movies = [responseObject objectForKey:@"movies"];
        
        for (NSDictionary *movie in movies) {
            // valueForKeyPath is used quite often (e.g., @"movies.title")
            NSString *title = [movie valueForKeyPath:@"title"];
        }
        NSLog(@"Response Object: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Response Object: %@", error);
    }];
}

@end
