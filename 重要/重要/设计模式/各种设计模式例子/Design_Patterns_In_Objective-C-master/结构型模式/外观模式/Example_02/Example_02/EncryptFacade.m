//
//  EncryptFacade.m
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "EncryptFacade.h"
#import "FileReader.h"
#import "CipherMachine.h"
#import "FileWriter.h"

@interface EncryptFacade()

@property (strong, nonatomic) FileReader *reader;
@property (strong, nonatomic) CipherMachine *machine;
@property (strong, nonatomic) FileWriter *writer;

@end

@implementation EncryptFacade

- (instancetype)init
{
    if (self = [super init]) {
        _reader = [[FileReader alloc] init];
        _machine = [[CipherMachine alloc] init];
        _writer = [[FileWriter alloc] init];
    }
    return self;
}

- (BOOL)willEncryptPatheOfFile:(NSString *)file toPath:(NSString *)path;
{
    _reader.path = file;
    NSString *content = [_reader readFile];
    
    _machine.originalContent = content;
    NSString *encryptStr = [_machine encrypt];
    
    _writer.content = encryptStr;
    _writer.path = path;
    return [_writer write];
}

@end
