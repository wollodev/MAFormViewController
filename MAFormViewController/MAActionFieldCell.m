//
//  MAActionFieldCell.m
//  MAFormViewController
//
//  Created by Wolfgang Kluth on 24/08/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import "MAActionFieldCell.h"

static CGFloat const kDefaultSuggestedHeight = 44;

@implementation MAActionFieldCell

- (instancetype)initFieldWithTitle:(NSString *)title actionBlock:(void (^)(void))block {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    _title = title;
    _actionBlock = block;
    
    _suggestedHeight = kDefaultSuggestedHeight;
    
    [self configureTextField];
    
    return self;
}

- (void)configureTextField {
    self.textLabel.text = self.title;
    self.textLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    NSLog(@"Selected ActionField with Title %@", self.title);
    self.actionBlock();
}

@end
