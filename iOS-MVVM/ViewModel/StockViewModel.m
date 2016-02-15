//
//  StockViewModel.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "StockViewModel.h"

@implementation StockViewModel

-(instancetype)initWithStock:(Stock *)stock{
    self = [super init];
    if (!self) return nil;
    
    self.nameText = [NSString stringWithFormat:@"%@ - %@", [stock.code uppercaseString], stock.name];
    self.graphUrl = [NSURL URLWithString:stock.graphUrl];
    
    return self;
    
}

@end
