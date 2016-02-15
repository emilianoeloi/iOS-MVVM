//
//  PersonViewModel.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/12/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "PersonViewModel.h"

@implementation PersonViewModel

-(instancetype)initWithPerson:(Person *)person{
    self = [super init];
    if (!self) return nil;
    
    _person = person;
    if (person.salutation.length > 0) {
        _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
    } else {
        _nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    _birthDateText = [dateFormatter stringFromDate:person.birthDate];
    
    return self;
}



@end
