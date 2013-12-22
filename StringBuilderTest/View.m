//
//  View.m
//  StringBuilderTest
//
//  Created by mallarke on 12/21/13.
//  Copyright (c) 2013 shadow coding. All rights reserved.
//

#import "View.h"

#pragma mark - View extension -

@interface View()

@property (strong) UILabel *label;

@end

#pragma mark - View implementation

@implementation View

#pragma mark - Constructor/Destructor methods -

- (id)init
{
    self = [super init];
    
    if(self)
	{
        self.label = [UILabel new];
        self.label.backgroundColor = [UIColor clearColor];
        self.label.numberOfLines = 0;
        self.label.text = [NSString defaultText];
        [self addSubview:self.label];
    }
    
    return self;
}

- (void)dealloc
{
}

#pragma mark - Public methods -

#pragma mark - Private methods -

#pragma mark - Protected methods -

- (void)layoutSubviews
{
	[super layoutSubviews];
    
    [self.label sizeToFit];
    self.label.y = 100;
    [self.label centerHorizontal];
}

#pragma mark - Getter/Setter methods -

@end
