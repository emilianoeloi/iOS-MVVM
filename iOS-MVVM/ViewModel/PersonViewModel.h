//
//  PersonViewModel.h
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/12/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonViewModel : NSObject

-(instancetype)initWithPerson:(Person *)person;

@property (nonatomic, readonly) Person *person;
@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthDateText;

@end
