.class public abstract Lsk/mimac/slideshow/utils/NetworkFormatterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, ""

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    const-string v6, "%02X%s"

    aget-byte v7, v4, v5

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    array-length v8, v4

    sub-int/2addr v8, v1

    if-ge v5, v8, :cond_1

    const-string v8, ":"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v8, v2

    :goto_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v0

    aput-object v8, v9, v1

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v5, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "ip a show scope link up | grep brd | grep :"

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Shell$Response;->getResult()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Shell$Response;->getStdout()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_4

    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get device MAC address: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_3
    return-object v2
.end method
