//
//  ProductInfoModel.h
//  ProductListDiffStyleDemo
//
//  Created by crw on 6/20/16.
//  Copyright © 2016 crw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ProductInfoModel : NSObject

@property (nonatomic, copy  ,readonly) NSString     *title;
@property (nonatomic, copy  ,readonly) NSString     *desc;
@property (nonatomic, strong,readonly) UIImage      *image;

- (instancetype)initWithTitle:(NSString *)title desc:(NSString *)desc image:(UIImage *)image;

@end
