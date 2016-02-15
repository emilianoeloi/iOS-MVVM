//
//  Person.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/12/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthDate:(NSDate *)birthDate{
    self = [super init];
    if (self) {
        self.salutation = salutation;
        self.firstName = firstName;
        self.lastName = lastName;
        self.birthDate = birthDate;
    }
    return self;
}

@end
