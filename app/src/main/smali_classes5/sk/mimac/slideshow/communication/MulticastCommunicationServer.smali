.class Lsk/mimac/slideshow/communication/MulticastCommunicationServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private deviceDiscoveredConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceId:Ljava/lang/String;

.field private final group:Ljava/net/InetAddress;

.field private ipv8port:I

.field private lastIntroMessageReceived:J

.field private final multicastAddress:Ljava/lang/String;

.field private final multicastPort:I

.field private final secretKey:[B

.field private shouldRun:Z

.field private socket:Ljava/net/MulticastSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->secretKey:[B

    const/4 v2, 0x1

    iput-boolean v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->shouldRun:Z

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "233.253."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v4, v2, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastAddress:Ljava/lang/String;

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0x1fff

    const v4, 0xc168

    add-int/2addr v2, v4

    iput v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->group:Ljava/net/InetAddress;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceId:Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    array-length v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :array_0
    .array-data 1
        -0x69t
        -0xat
        0x61t
        0x62t
        0x5at
        -0x4et
        -0x3t
        0x46t
        0x0t
        -0x28t
        0x6at
        -0x75t
        0x35t
        0x6ft
        0x21t
        0x58t
        -0x36t
        0x16t
        -0x4at
        0x3bt
        -0x50t
        -0x3t
        -0x5bt
        0x28t
        0x49t
        0x19t
        -0x7ft
        -0x29t
        -0x9t
        0x5at
        -0x57t
        -0x41t
    .end array-data
.end method

.method private getCipher(I)Ljavax/crypto/Cipher;
    .locals 4

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->secretKey:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method

.method private processReceivedData(Ljava/lang/String;[BLjavax/crypto/Cipher;)V
    .locals 3

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance p3, Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p2, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    sget-object v0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Got data from {}: {}"

    invoke-interface {v0, v2, p1, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    aget-byte v0, p2, v1

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    aget-byte v0, p2, v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    aget-byte p2, p2, v0

    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->processReceivedDataInternal(Ljava/lang/String;B[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    sget-object p3, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t process data received from \'{}\'"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private processReceivedDataInternal(Ljava/lang/String;B[Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x49

    const/4 v1, 0x1

    if-eq p2, v0, :cond_5

    const/16 v0, 0x4e

    const-string v2, "__ALL__"

    if-eq p2, v0, :cond_3

    const/16 v0, 0x50

    if-eq p2, v0, :cond_1

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    sget-object p3, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v0, "Received unknown message type from \'{}\': {}"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    aget-object p2, p3, v1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_0
    invoke-direct {p0, p1, p3}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->registerDeviceInfo(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    aget-object p1, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    aget-object p1, p3, v1

    iget-object p2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_2
    invoke-direct {p0, p3}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->processReceivedPrepare([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    aget-object p1, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    aget-object p1, p3, v1

    iget-object p2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    invoke-direct {p0, p3}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->processReceivedNext([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->lastIntroMessageReceived:J

    aget-object p2, p3, v1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendIntroMessage(Z)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private processReceivedNext([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    aget-object v1, p1, v0

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPlay(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/utils/Couple;

    aget-object v4, p1, v2

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v5}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPlay(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private processReceivedPrepare([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    aget-object v1, p1, v0

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    aget-object v1, p1, v2

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPrepare(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/utils/Couple;

    aget-object v4, p1, v2

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v5}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/gui/ItemThread;->confirmPrepare(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private registerDeviceInfo(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceDiscoveredConsumer:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastIntroMessageReceived()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->lastIntroMessageReceived:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->shouldRun:Z

    if-eqz v4, :cond_3

    :try_start_0
    invoke-direct {p0, v3}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v4

    new-instance v5, Ljava/net/MulticastSocket;

    iget v6, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-direct {v5, v6}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v5, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    iget-object v6, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->group:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    sget-object v5, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Started multicast communication server on {}:{}"

    iget-object v7, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastAddress:Ljava/lang/String;

    iget v8, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x1ed

    new-array v6, v5, [B

    new-instance v7, Ljava/net/DatagramPacket;

    invoke-direct {v7, v6, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    :cond_1
    :goto_1
    iget-boolean v5, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->shouldRun:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_1

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v8

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->processReceivedData(Ljava/lang/String;[BLjavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3

    :goto_2
    sget-object v5, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    iget-object v6, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastAddress:Ljava/lang/String;

    iget v7, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    aput-object v4, v8, v3

    const-string v4, "Error in communication server {}:{}"

    invoke-interface {v5, v4, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    sget-object v5, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    iget-object v6, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastAddress:Ljava/lang/String;

    iget v7, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    aput-object v4, v8, v3

    const-string v4, "Error in communication server {}:{}: {}"

    invoke-interface {v5, v4, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_4
    iget-boolean v4, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->shouldRun:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    :cond_4
    sget-object v0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastAddress:Ljava/lang/String;

    iget v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Stopped communication server on {}:{}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public sendData(Ljava/net/InetAddress;[B)V
    .locals 5

    array-length v0, p2

    const/16 v1, 0x1ed

    if-gt v0, v1, :cond_1

    array-length v0, p2

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v1, [B

    sget-object v4, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p2, "Sending data {}"

    invoke-interface {v1, p2, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p2

    iget v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-direct {v0, p2, v1, p1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :try_start_0
    iget-object p1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t send data: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Socket is not ready"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    const-string v1, " bytes) is larger than maximum safe datagram length"

    .line 1
    invoke-static {v1, p2, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendData([B)V
    .locals 1

    .line 6
    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->group:Ljava/net/InetAddress;

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendData(Ljava/net/InetAddress;[B)V

    return-void
.end method

.method public sendIntroMessage(Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "SI;"

    goto :goto_0

    :cond_0
    const-string p1, "SR;"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->ipv8port:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->sendData([B)V

    return-void
.end method

.method public setDeviceDiscoveredConsumer(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->deviceDiscoveredConsumer:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public setIpv8port(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->ipv8port:I

    return-void
.end method

.method public start()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MulticastCommunicationServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastAddress:Ljava/lang/String;

    iget v2, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->multicastPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Stopping communication server on {}:{}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->shouldRun:Z

    iget-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/communication/MulticastCommunicationServer;->thread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
