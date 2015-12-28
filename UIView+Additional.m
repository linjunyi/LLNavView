//
//  UIView+Additional.m
//  LLNavView
//
//  Created by lin on 15/12/26.
//  Copyright © 2015年 lin. All rights reserved.
//

#import "UIView+Additional.h"

@implementation UIView(PropertyAdditional)

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}


@end
