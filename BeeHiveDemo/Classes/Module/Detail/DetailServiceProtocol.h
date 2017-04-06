//
//  DetailServiceProtocol.h
//  BeeHiveDemo
//
//  Created by JasonZhang on 2017/4/6.
//  Copyright © 2017年 wscn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"

@protocol DetailServiceProtocol <NSObject, BHServiceProtocol>

- (void)setTitleLabelText:(NSString *)text;

@end
