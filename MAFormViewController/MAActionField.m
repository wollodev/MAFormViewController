//
//  MAActionField.m
//  MAFormViewController
//
//  Created by Wolfgang Kluth on 24/08/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import "MAActionField.h"

@implementation MAActionField

+ (instancetype)fieldWithTitle:(NSString *)title actionBlock:(void (^)(void))block {
    MAActionField *actionField = [MAActionField new];
    actionField.title = title;
    actionField.actionBlock = block;
    
    return actionField;
}

@end
