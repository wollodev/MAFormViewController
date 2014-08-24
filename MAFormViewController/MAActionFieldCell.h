//
//  MAActionFieldCell.h
//  MAFormViewController
//
//  Created by Wolfgang Kluth on 24/08/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAActionFieldCell : UITableViewCell
@property (nonatomic, retain) NSString *title;
@property (copy) void (^actionBlock)(void);
@property (readonly) CGFloat suggestedHeight;

- (instancetype)initFieldWithTitle:(NSString *)title actionBlock:(void (^)(void))block;

@end
