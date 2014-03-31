//
//  NSArray+JSONAdditions.h
//
//  Created by Dmitry Shmidt on 31/03/14.
//  Copyright (c) 2014 Shmidt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JSONAdditions)
+ (NSArray *)arrayWithBundleJSONFilename:(NSString*)fileLocation;
@end
