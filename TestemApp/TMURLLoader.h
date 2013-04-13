//
//  TMURLLoader.h
//  TestemApp
//
//  Created by yaakaito on 2013/04/13.
//  Copyright (c) 2013年 yaakaito.org. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kTestemDefaultURLString   (@"http://localhost:7357")

@interface TMURLLoader : NSObject

+ (NSURL *)testemURL;
@end
