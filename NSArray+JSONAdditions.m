//
//  NSArray+JSONAdditions.m
//
//  Created by Dmitry Shmidt on 31/03/14.
//  Copyright (c) 2014 Shmidt. All rights reserved.
//

#import "NSArray+JSONAdditions.h"

@implementation NSArray (JSONAdditions)
+ (NSArray *)arrayWithBundleJSONFilename:(NSString*)fileLocation{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:[fileLocation stringByDeletingPathExtension] ofType:fileLocation.pathExtension];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions error:&error];

    if (error != nil) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    };
    NSAssert([result isKindOfClass:self.class], @"Loaded data from JSON file %@ is not an array, but %@", fileLocation, NSStringFromClass([result class]));

    return result;
}
- (NSString *)jsonString{
    __autoreleasing NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:0 error:&error];
    if (error) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    };
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
- (NSString *)jsonStringPrettyPrinted{
    __autoreleasing NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    };
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
@end
