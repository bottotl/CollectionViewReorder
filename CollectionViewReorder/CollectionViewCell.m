//
//  CollectionViewCell.m
//  CollectionViewReorder
//
//  Created by jft0m on 2018/4/27.
//  Copyright © 2018年 jft0m. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _label = [UILabel new];
        _label.textColor = [UIColor blackColor];
        _label.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_label];
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.label.frame = self.bounds;
    
}

- (void)prepareForReuse {
    [super prepareForReuse];
    self.label.text = nil;
}

@end
