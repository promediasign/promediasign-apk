.class public Lsk/mimac/slideshow/driver/HardwareDriverService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/driver/HardwareDriverService;


# instance fields
.field private final currentStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

.field private final readListener:Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;

.field private final serialService:Lsk/mimac/slideshow/serial/SerialService;

.field private shouldRun:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/driver/HardwareDriverService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/driver/HardwareDriverDefinition;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->shouldRun:Z

    new-instance v1, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;-><init>(Lsk/mimac/slideshow/driver/HardwareDriverService$1;)V

    iput-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->readListener:Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->currentStatus:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommunication()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommunication()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->getBaudrate()I

    move-result v3

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommunication()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->getDataBits()I

    move-result v4

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommunication()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->getStopBits()I

    move-result v5

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommunication()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Communication;->isParity()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lsk/mimac/slideshow/PlatformDependentFactory;->getSerialService(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)Lsk/mimac/slideshow/serial/SerialService;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    return-void
.end method

.method public static getCurrentStatus()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->currentStatus:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v2, v2, Lsk/mimac/slideshow/driver/HardwareDriverService;->currentStatus:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "_CONNECTED"

    sget-object v2, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v2, v2, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    invoke-interface {v2}, Lsk/mimac/slideshow/serial/SerialService;->isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getOne(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getMaxRetries()I

    move-result v7

    if-ge v5, v7, :cond_0

    :try_start_0
    iget-object v6, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->readListener:Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;

    invoke-virtual {v7}, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->discardData()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getRequest()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lsk/mimac/slideshow/driver/HardwareDriverService;->writeCommand(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->readResponse(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)Ljava/lang/String;

    move-result-object v7

    monitor-exit v6

    return-object v7

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    add-int/2addr v5, v2

    goto :goto_0

    :goto_2
    throw p1

    :cond_0
    instance-of v5, v6, Lsk/mimac/slideshow/exception/ApiException;

    if-nez v5, :cond_2

    instance-of v5, v6, Ljava/lang/NumberFormatException;

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    sget-object v5, Lsk/mimac/slideshow/driver/HardwareDriverService;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t poll command \'{}\' with request \'{}\'"

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getRequest()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v4

    aput-object p1, v1, v2

    aput-object v6, v1, v0

    invoke-interface {v5, v7, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    :goto_3
    sget-object v5, Lsk/mimac/slideshow/driver/HardwareDriverService;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t poll command \'{}\' with request \'{}\': {}"

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getRequest()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v4

    aput-object p1, v1, v2

    aput-object v6, v1, v0

    invoke-interface {v5, v7, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-object v3
.end method

.method public static getState()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Driver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v1, v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getDriverInfo()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$DriverInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RS232: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v1, v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    invoke-interface {v1}, Lsk/mimac/slideshow/serial/SerialService;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->getCurrentStatus()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private pollAll()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;

    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->isPoll()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->shouldRun:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->pollOne(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pollOne(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->getOne(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->currentStatus:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->currentStatus:Ljava/util/Map;

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private readResponse(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getEncoding()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->HEX:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->readListener:Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;

    .line 15
    .line 16
    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getTimeout()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/driver/HardwareDriverService$ReadListener;->getData(I)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 36
    .line 37
    .line 38
    move-object v1, v2

    .line 39
    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getResponseMapping()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;

    .line 58
    .line 59
    invoke-virtual {v2}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;->getResponse()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    :goto_2
    invoke-virtual {v2}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;->getValue()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_4
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    .line 84
    .line 85
    const-string v0, "No response mapping found for response \'"

    .line 86
    .line 87
    const-string v2, "\'"

    .line 88
    .line 89
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 94
    .line 95
    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public static sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    .line 6
    .line 7
    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommands()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "\' was not found"

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;

    .line 28
    .line 29
    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getRequest()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    sget-object p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    .line 46
    .line 47
    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getRequest()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->sendCommandInternal(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getRequestMapping()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;

    .line 74
    .line 75
    invoke-virtual {v3}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;->getValue()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    sget-object p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    .line 86
    .line 87
    invoke-virtual {v3}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$RequestMapping;->getRequest()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    .line 93
    .line 94
    const-string v1, "Request mapping \'"

    .line 95
    .line 96
    const-string v3, "\' for name \'"

    .line 97
    .line 98
    invoke-static {v1, p1, v3, p0, v2}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget-object p1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 103
    .line 104
    invoke-direct {v0, p0, p1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_4
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    .line 109
    .line 110
    const-string v0, "Command name \'"

    .line 111
    .line 112
    invoke-static {v0, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 117
    .line 118
    invoke-direct {p1, p0, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_5
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    .line 123
    .line 124
    const-string p1, "Hardware driver is not configured"

    .line 125
    .line 126
    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 127
    .line 128
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method private sendCommandInternal(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/driver/HardwareDriverService;->writeCommand(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_SET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_GET"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;

    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->isPoll()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getWaitInterval()I

    move-result v2

    if-lez v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;->getWaitInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->pollOne(Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Command;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static start()V
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->stop()V

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Starting hardware driver service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/FileUtils2;->loadFileToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    new-instance v1, Lsk/mimac/slideshow/driver/HardwareDriverService;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/driver/HardwareDriverService;-><init>(Lsk/mimac/slideshow/driver/HardwareDriverDefinition;)V

    sput-object v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    const-string v3, "HardwareDriverService"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->thread:Ljava/lang/Thread;

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v0, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v0, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t load hardware driver definition"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping hardware driver service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->shouldRun:Z

    iget-object v0, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    iget-object v0, v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService;->instance:Lsk/mimac/slideshow/driver/HardwareDriverService;

    :cond_0
    return-void
.end method

.method private writeCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Unknown encoding: "

    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lsk/mimac/slideshow/driver/HardwareDriverService$1;->$SwitchMap$sk$mimac$slideshow$driver$HardwareDriverDefinition$Encoding:[I

    iget-object v3, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v3}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getEncoding()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    invoke-static {p1}, Lsk/mimac/slideshow/communication/utils/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lsk/mimac/slideshow/serial/SerialService;->writeMessage([B)Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getEncoding()Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v2}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lsk/mimac/slideshow/serial/SerialService;->writeMessage([B)Z

    move-result p1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Command couldn\'t be sent from the player to the target device"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    invoke-interface {v0}, Lsk/mimac/slideshow/serial/SerialService;->start()V

    :goto_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->shouldRun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lsk/mimac/slideshow/driver/HardwareDriverService;->pollAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->driverDefinition:Lsk/mimac/slideshow/driver/HardwareDriverDefinition;

    invoke-virtual {v0}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition;->getPollingInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    invoke-interface {v0}, Lsk/mimac/slideshow/serial/SerialService;->stop()V

    return-void

    :goto_1
    iget-object v1, p0, Lsk/mimac/slideshow/driver/HardwareDriverService;->serialService:Lsk/mimac/slideshow/serial/SerialService;

    invoke-interface {v1}, Lsk/mimac/slideshow/serial/SerialService;->stop()V

    throw v0
.end method
