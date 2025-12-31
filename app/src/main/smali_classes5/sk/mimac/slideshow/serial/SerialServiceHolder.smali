.class public abstract Lsk/mimac/slideshow/serial/SerialServiceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/serial/SerialService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static getState()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;->instance:Lsk/mimac/slideshow/serial/SerialService;

    if-nez v0, :cond_0

    const-string v0, "Not started"

    return-object v0

    :cond_0
    invoke-interface {v0}, Lsk/mimac/slideshow/serial/SerialService;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized start()V
    .locals 9

    const-class v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->stop()V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->SERIAL_MQTT_PORT_PATH:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/serial/SerialServiceImpl;

    new-instance v3, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;-><init>(Lsk/mimac/slideshow/serial/SerialServiceHolder$1;)V

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->SERIAL_MQTT_PORT_RATE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->SERIAL_MQTT_PORT_DATA_BITS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->SERIAL_MQTT_PORT_STOP_BITS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->SERIAL_MQTT_PORT_PARITY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lsk/mimac/slideshow/serial/SerialServiceImpl;-><init>(Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;Ljava/lang/String;IIII)V

    sput-object v1, Lsk/mimac/slideshow/serial/SerialServiceHolder;->instance:Lsk/mimac/slideshow/serial/SerialService;

    invoke-interface {v1}, Lsk/mimac/slideshow/serial/SerialService;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static stop()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;->instance:Lsk/mimac/slideshow/serial/SerialService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/serial/SerialService;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;->instance:Lsk/mimac/slideshow/serial/SerialService;

    :cond_0
    return-void
.end method

.method public static writeMessage([B)Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/serial/SerialServiceHolder;->instance:Lsk/mimac/slideshow/serial/SerialService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lsk/mimac/slideshow/serial/SerialService;->writeMessage([B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
