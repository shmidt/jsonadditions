//
//  NSDictionary+JSONAdditions.h
//  FlickrBox
//
//  Created by Dmitry Shmidt on 31/03/14.
//  Copyright (c) 2014 Shmidt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSONAdditions)
+ (NSDictionary*)dictionaryWithBundleJSONFilename:(NSString*)fileLocation;
- (NSString *)jsonString;
- (NSString *)jsonStringPrettyPrinted;
@end
