//
//  OCSEnvelope.m
//  Objective-C Sound
//
//  Created by Aurelius Prochazka on 5/17/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "OCSLinearEnvelope.h"

@interface OCSLinearEnvelope () {
    OCSParameter *audio;
    OCSParameter *amp;
    OCSConstant *rise;
    OCSConstant *dur;
    OCSConstant *decay;    
}

@end

@implementation OCSLinearEnvelope

@synthesize control;
@synthesize output;

- (id)initWithRiseTime:(OCSConstant *)riseTime
         totalDuration:(OCSConstant *)totalDuration
             decayTime:(OCSConstant *)decayTime
             amplitude:(OCSParameter *)amplitude
{
    self = [super init];
    if (self) {
        audio   = [OCSParameter parameterWithString:[self operationName]];
        control = [OCSControl parameterWithString:[self operationName]];
        output  =  audio;
        amp     = amplitude;
        rise    = riseTime;
        dur     = totalDuration;
        decay   = decayTime;
    }
    return self; 
}


- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ linen %@, %@, %@, %@",
            output, amp, rise, dur, decay];
}

- (NSString *)description {
    return [output parameterString];
}

@end
