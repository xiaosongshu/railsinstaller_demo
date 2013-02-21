//
//  KYJViewController.m
//  LocationDemo
//
//  Created by Kevin Jiang on 2/11/13.
//  Copyright (c) 2013 Kevin Jiang. All rights reserved.
//

#import "KYJViewController.h"

@interface KYJViewController (){
}

//grabs data for you.
@end

@implementation KYJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    
        // Set a movement threshold for new events.
        self.locationManager.distanceFilter = 1000;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//At top, can click ribbon and will jump to method
#pragma mark - CLLocationManagerDelegate methods

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    NSLog(@"lat: %f, lon:%f",location.coordinate.latitude,location.coordinate.longitude);
    [self addPinToMatAtLocation: location];
    //Center map on location
    [self.mapView setCenterCoordinate:location.coordinate animated:YES];
    //Zoom into map
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    //Set the amount of zoom (smaller value = more zoom)
    span.latitudeDelta = 0.02;
    span.longitudeDelta = 0.02;
    region.center = location.coordinate;
    region.span = span;
    region = [self.mapView regionThatFits:region];
    [self.mapView setRegion:region animated:TRUE];
    
}


//add helper method
- (void)addPinToMatAtLocation:(CLLocation *)location
{
    //red pin on map
    MKPointAnnotation *pin = [[MKPointAnnotation alloc] init];
    pin.coordinate = location.coordinate;
    pin.title = @"You Are Here!";
    [self.mapView addAnnotation:pin];
}



@end
