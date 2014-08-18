//
//  ViewController.m
//  SparkCoreiPhoneLEDControl
//
//  Created by Claus Kjeldsen on 03/08/14.
//  Copyright (c) 2014 Kelle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#define deviceID @"<Type your Device ID Here!!!>"
#define token @"<Type your Devide Token Here!!!>"

- (IBAction)led1:(id)sender
{
    UISwitch *theSwitch = (UISwitch *) sender;
    
    if(theSwitch.isOn) //turn LED on
    {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.spark.io/v1/devices/%@/led",deviceID]];
        NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL: url cachePolicy: NSURLRequestReloadIgnoringCacheData timeoutInterval: 60.0];
        [postRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [postRequest setHTTPMethod:@"POST"];
        
        NSString *command = @"l1,HIGH";
        NSString *bodyData = [NSString stringWithFormat:@"access_token=%@&params=%@",token,command];
        [postRequest setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
        
        [NSURLConnection sendAsynchronousRequest:postRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
         {
             if (!connectionError)
             {
                 self.Result.text = [[NSString alloc] initWithBytes:data.bytes length:data.length encoding:NSUTF8StringEncoding];
             }
             else
             {
                 self.Result.text = [NSString stringWithFormat:@"%@",connectionError];
             }
         }];
    }
    else //turn LED off
    {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.spark.io/v1/devices/%@/led",deviceID]];
        NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL: url cachePolicy: NSURLRequestReloadIgnoringCacheData timeoutInterval: 60.0];
        [postRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [postRequest setHTTPMethod:@"POST"];
        
        NSString *command = @"l1,LOW";
        NSString *bodyData = [NSString stringWithFormat:@"access_token=%@&params=%@",token,command];
        [postRequest setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
        
        [NSURLConnection sendAsynchronousRequest:postRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
         {
             if (!connectionError)
             {
                 self.Result.text = [[NSString alloc] initWithBytes:data.bytes length:data.length encoding:NSUTF8StringEncoding];
             }
             else
             {
                 self.Result.text = [NSString stringWithFormat:@"%@",connectionError];
             }
         }];
    }
}


- (IBAction)led2:(id)sender
{
    UISwitch *theSwitch = (UISwitch *) sender;
    
    if(theSwitch.isOn) //turn LED on
    {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.spark.io/v1/devices/%@/led",deviceID]];
        NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL: url cachePolicy: NSURLRequestReloadIgnoringCacheData timeoutInterval: 60.0];
        [postRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [postRequest setHTTPMethod:@"POST"];
        
        NSString *command = @"l2,HIGH";
        NSString *bodyData = [NSString stringWithFormat:@"access_token=%@&params=%@",token,command];
        [postRequest setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
        
        [NSURLConnection sendAsynchronousRequest:postRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
         {
             if (!connectionError)
             {
                 self.Result.text = [[NSString alloc] initWithBytes:data.bytes length:data.length encoding:NSUTF8StringEncoding];
             }
             else
             {
                 self.Result.text = [NSString stringWithFormat:@"%@",connectionError];
             }
         }];
    }
    else //turn LED off
    {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://api.spark.io/v1/devices/%@/led",deviceID]];
        NSMutableURLRequest *postRequest = [NSMutableURLRequest requestWithURL: url cachePolicy: NSURLRequestReloadIgnoringCacheData timeoutInterval: 60.0];
        [postRequest setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [postRequest setHTTPMethod:@"POST"];
        
        NSString *command = @"l2,LOW";
        NSString *bodyData = [NSString stringWithFormat:@"access_token=%@&params=%@",token,command];
        [postRequest setHTTPBody:[NSData dataWithBytes:[bodyData UTF8String] length:strlen([bodyData UTF8String])]];
        
        [NSURLConnection sendAsynchronousRequest:postRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
         {
             if (!connectionError)
             {
                 self.Result.text = [[NSString alloc] initWithBytes:data.bytes length:data.length encoding:NSUTF8StringEncoding];
             }
             else
             {
                 self.Result.text = [NSString stringWithFormat:@"%@",connectionError];
             }
         }];
    }
}



@end
