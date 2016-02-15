//
//  Stock.h
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stock : NSObject

@property (nonatomic, strong) NSString *code;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *graphUrl;

-(instancetype)initWithCode:(NSString *)code name:(NSString *)name;

@end
