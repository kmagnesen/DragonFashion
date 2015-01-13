//
//  Dragon.h
//  DragonFashion
//
//  Created by Kyle Magnesen on 1/13/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject

-(instancetype)initWithFullname:(NSString *)fullname;
-(instancetype)initWithFullname:(NSString *)fullname signatureClothingItem:(NSString *)clothingItem;

@property NSString *fullname;
@property NSString *signatureClothingItem;

@end
