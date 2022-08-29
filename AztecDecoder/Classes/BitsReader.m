#import "BitsReader.h"

@interface BitsReader ()
@property (strong, nonatomic) NSData *aztecData;
@property (assign, nonatomic) int dataPosition;
@property (assign, nonatomic) char currentByte;
@property (assign, nonatomic) int bitPosition;
@property (assign, nonatomic) BOOL endOfData;

@end

@implementation BitsReader

- (instancetype)init:(NSData *)aztecData startIdx:(int)startIdx {
    self = [super init];
    if (self) {
        _aztecData = aztecData;
        _dataPosition = startIdx;
        _bitPosition = 0;
        _endOfData = NO;
    }
    return self;
}

- (char)readBit {
    if (self.endOfData) return -1;
  
    const char * data = [self.aztecData bytes];
    if (self.bitPosition == 0) {
    if (self.dataPosition >= self.aztecData.length) {
      self.endOfData = YES;
      return -1;
    }
    self.currentByte = data[self.dataPosition++] & (0xff);
    self.bitPosition = 8;
    }
    self.bitPosition--;
    return (uint32_t)(((uint32_t)self.currentByte) >> self.bitPosition) & 1;
}

- (uint32_t)readByte {
    if (self.endOfData) return -1;
    
    const char * data = [self.aztecData bytes];
    if (self.dataPosition >= self.aztecData.length) {
        self.endOfData = YES;
        return -1;
    }
    uint32_t returnData = data[self.dataPosition++] & (0xff);
    if (returnData == -45) {
        returnData = 211;
    }
    return returnData;
}

@end
