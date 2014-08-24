//
//  MAActionField.h
//  MAFormViewController
//
//  Created by Wolfgang Kluth on 24/08/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MAActionBlock)(void);

@interface MAActionField : NSObject
@property (nonatomic, retain) NSString *title;
@property (copy) void (^actionBlock)(void);

+ (instancetype)fieldWithTitle:(NSString *)title actionBlock:(void (^)(void))block;

@end
