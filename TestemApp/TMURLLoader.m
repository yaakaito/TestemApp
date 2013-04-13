//
//  TMURLLoader.m
//  TestemApp
//
//  Created by yaakaito on 2013/04/13.
//  Copyright (c) 2013年 yaakaito.org. All rights reserved.
//

#import "TMURLLoader.h"

@implementation TMURLLoader

+ (NSURL *)testemURL {
    
    NSData *jsonData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"testem_app" ofType:@"json"]];
    NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:NULL];
    if (JSON[@"url"]) {
        return [NSURL URLWithString:JSON[@"url"]];
    }
    
    return [NSURL URLWithString:kTestemDefaultURLString];
}
@end
