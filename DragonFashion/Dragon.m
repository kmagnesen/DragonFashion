//
//  Dragon.m
//  DragonFashion
//
//  Created by Kyle Magnesen on 1/13/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

-(instancetype)initWithFullname:(NSString *)fullname{
    self = [super init];
    self.fullname = fullname;
    return self;
}


-(NSString *)description {
    return [NSString stringWithFormat:@"Dragon:%@ (%@)", self.fullname, self.signatureClothingItem];
}

@end
