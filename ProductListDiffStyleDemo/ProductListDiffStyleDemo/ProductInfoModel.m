//
//  ProductInfoModel.m
//  ProductListDiffStyleDemo
//
//  Created by crw on 6/20/16.
//  Copyright © 2016 crw. All rights reserved.
//

#import "ProductInfoModel.h"

@interface ProductInfoModel()

@end

@implementation ProductInfoModel

- (instancetype)initWithTitle:(NSString *)title desc:(NSString *)desc image:(UIImage *)image{
    self = [super init];
    if (self) {
        _title = title;
        _desc  = desc;
        _image = image;
    }
    return self;
}

@end
