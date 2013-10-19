//
//  BoxOfficeViewController.m
//  tomatoTest
//
//  Created by John on 10/18/13.
//  Copyright (c) 2013 John. All rights reserved.
//

#import "BoxOfficeViewController.h"
#import "MovieCell.h"

@interface BoxOfficeViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BoxOfficeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        
    }
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view methods

- (int)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell"];
    
    cell.starsLabel.text = @"No Pain, No Gain";
    cell.titleLabel.text = @"Mark Wahlberg";
    
    return cell;
}


@end
