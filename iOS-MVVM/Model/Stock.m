//
//  Stock.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "Stock.h"

@implementation Stock

-(instancetype)initWithCode:(NSString *)code name:(NSString *)name{
    self = [super init];
    if (self) {
        self.code = code;
        self.name = name;
        self.graphUrl = [NSString stringWithFormat:@"http://quotes.enfoque.com.br:8080/minichartid?ID=%@", code];
    }
    return self;
}

@end
