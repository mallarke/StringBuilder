//
//  ViewController.m
//  StringBuilderTest
//
//  Created by mallarke on 12/21/13.
//  Copyright (c) 2013 shadow coding. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

#pragma mark - ViewController extension -

@interface ViewController()

@property (nonatomic, strong) View *view;

@end

#pragma mark - ViewController implementation

@implementation ViewController

#pragma mark - Constructor/Destructor methods -

- (id)init
{
    self = [super init];
    
    if(self)
	{
        self.title = [NSString viewControllerTitle];
    }
    
    return self;
}

- (void)dealloc
{
}

#pragma mark - View life cycle methods -

- (void)loadView
{
    self.view = [View new];
}

#pragma mark - Public methods -

#pragma mark - Private methods -

#pragma mark - Protected methods -

#pragma mark - Getter/Setter methods -

@end
