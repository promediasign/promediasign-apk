.class public final Lio/netty/util/NetUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IPV4_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x3

.field private static final IPV4_PREFERRED:Z

.field private static final IPV4_SEPARATORS:I = 0x3

.field private static final IPV6_ADDRESSES_PREFERRED:Z

.field private static final IPV6_BYTE_COUNT:I = 0x10

.field private static final IPV6_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x4

.field private static final IPV6_MAX_CHAR_COUNT:I = 0x27

.field private static final IPV6_MAX_SEPARATORS:I = 0x8

.field private static final IPV6_MIN_SEPARATORS:I = 0x2

.field private static final IPV6_WORD_COUNT:I = 0x8

.field public static final LOCALHOST:Ljava/net/InetAddress;

.field public static final LOCALHOST4:Ljava/net/Inet4Address;

.field public static final LOCALHOST6:Ljava/net/Inet6Address;

.field public static final LOOPBACK_IF:Ljava/net/NetworkInterface;

.field public static final SOMAXCONN:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "Failed to find the loopback interface"

    const-string v1, "localhost"

    const-string v2, "Using hard-coded IPv4 localhost address: {}"

    const-string v3, "java.net.preferIPv4Stack"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    const-string v5, "java.net.preferIPv6Addresses"

    invoke-static {v5, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    const-class v6, Lio/netty/util/NetUtil;

    invoke-static {v6}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v6

    sput-object v6, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "-Djava.net.preferIPv4Stack: {}"

    invoke-interface {v6, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "-Djava.net.preferIPv6Addresses: {}"

    invoke-interface {v6, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v5, 0x4

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const/16 v6, 0x10

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1, v5}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v5

    check-cast v5, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-static {v5}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    move-object v5, v7

    :goto_0
    sput-object v5, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    :try_start_1
    invoke-static {v1, v6}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    move-object v1, v7

    :goto_1
    sput-object v1, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    invoke-static {v9}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    sget-object v9, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v10, "Failed to retrieve the list of available network interfaces"

    invoke-interface {v9, v10, v8}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    invoke-static {v9}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    invoke-virtual {v11}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v7, v9

    goto :goto_3

    :cond_4
    move-object v11, v7

    :goto_3
    if-nez v7, :cond_7

    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v10, :cond_5

    :try_start_4
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v11, v6

    move-object v7, v8

    goto :goto_4

    :catch_3
    move-exception v6

    move-object v7, v8

    goto :goto_5

    :catch_4
    move-exception v6

    goto :goto_5

    :cond_6
    :goto_4
    if-nez v7, :cond_7

    :try_start_5
    sget-object v6, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v6, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :goto_5
    sget-object v8, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v8, v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v2, v6, v3

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const-string v1, "Loopback interface: {} ({}, {})"

    invoke-interface {v0, v1, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_8
    if-nez v11, :cond_c

    :try_start_6
    sget-object v0, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Using hard-coded IPv6 localhost address: {}"

    invoke-interface {v0, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_5
    nop

    goto :goto_a

    :cond_9
    move-object v1, v11

    :goto_7
    if-nez v1, :cond_a

    :goto_8
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0, v2, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_a
    move-object v5, v1

    goto :goto_c

    :goto_9
    if-nez v11, :cond_b

    sget-object v1, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1, v2, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    throw v0

    :goto_a
    if-nez v11, :cond_c

    goto :goto_8

    :cond_c
    :goto_b
    move-object v5, v11

    :goto_c
    sput-object v7, Lio/netty/util/NetUtil;->LOOPBACK_IF:Ljava/net/NetworkInterface;

    sput-object v5, Lio/netty/util/NetUtil;->LOCALHOST:Ljava/net/InetAddress;

    new-instance v0, Lio/netty/util/NetUtil$1;

    invoke-direct {v0}, Lio/netty/util/NetUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/netty/util/NetUtil;->SOMAXCONN:I

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static synthetic access$100(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/netty/util/NetUtil;->sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToIpAddress([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->bytesToIpAddress([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToIpAddress([BII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length: "

    const-string v0, " (expected: 4 or 16)"

    .line 2
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createByteArrayFromIpAddressString(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lio/netty/util/NetUtil;->validIpV4ToBytes(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x5b

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-static {p0, v3, v3}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    const/16 v1, 0x25

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ltz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_2
    invoke-static {p0, v3}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method private static decimalDigit(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x30

    return p0
.end method

.method public static getByName(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1, p0, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getIPv6ByName(Ljava/lang/CharSequence;Z)[B
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v16, 0xa

    const/16 v17, 0x0

    const/16 v5, 0x3a

    const/4 v4, 0x4

    const/16 v18, 0xf

    if-ge v6, v3, :cond_14

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v1, 0x2e

    if-eq v15, v1, :cond_c

    if-eq v15, v5, :cond_4

    invoke-static {v15}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez v8, :cond_0

    invoke-static {v15}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-gez v9, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    sub-int v1, v6, v9

    if-le v1, v4, :cond_2

    return-object v17

    :cond_2
    :goto_1
    invoke-static {v15}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v1

    sub-int v4, v6, v9

    const/4 v5, 0x2

    shl-int/2addr v4, v5

    shl-int/2addr v1, v4

    add-int/2addr v13, v1

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_3
    :goto_2
    return-object v17

    :cond_4
    add-int/lit8 v1, v10, 0x1

    sub-int v9, v6, v9

    if-gt v9, v4, :cond_b

    if-gtz v8, :cond_b

    const/16 v15, 0x8

    if-gt v1, v15, :cond_b

    add-int/lit8 v15, v11, 0x1

    const/16 v5, 0x10

    if-lt v15, v5, :cond_5

    goto :goto_6

    :cond_5
    rsub-int/lit8 v5, v9, 0x4

    const/4 v9, 0x2

    shl-int/2addr v5, v9

    shl-int v5, v13, v5

    if-lez v12, :cond_6

    add-int/lit8 v12, v12, -0x2

    :cond_6
    and-int/lit8 v9, v5, 0xf

    shl-int/2addr v9, v4

    shr-int/lit8 v13, v5, 0x4

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v2, v11

    add-int/lit8 v11, v11, 0x2

    shr-int/lit8 v9, v5, 0x8

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v4, v9, 0x4

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v2, v15

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v3, :cond_a

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v13, 0x3a

    if-ne v9, v13, :cond_a

    add-int/lit8 v6, v6, 0x2

    if-nez v7, :cond_9

    if-ge v6, v3, :cond_7

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x2

    const/4 v1, 0x2

    if-ne v10, v1, :cond_8

    if-nez v5, :cond_8

    const/4 v14, 0x1

    goto :goto_3

    :cond_8
    const/4 v14, 0x0

    :goto_3
    rsub-int/lit8 v1, v11, 0xe

    move v12, v1

    move v6, v4

    move v7, v11

    goto :goto_5

    :cond_9
    :goto_4
    return-object v17

    :cond_a
    move v10, v1

    :goto_5
    const/4 v1, 0x1

    const/4 v9, -0x1

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_b
    :goto_6
    return-object v17

    :cond_c
    add-int/lit8 v8, v8, 0x1

    sub-int v1, v6, v9

    const/4 v4, 0x3

    if-gt v1, v4, :cond_13

    if-ltz v9, :cond_13

    if-gt v8, v4, :cond_13

    if-lez v10, :cond_d

    add-int v4, v11, v12

    const/16 v5, 0xc

    if-lt v4, v5, :cond_13

    :cond_d
    add-int/lit8 v4, v6, 0x1

    if-ge v4, v3, :cond_13

    const/16 v4, 0x10

    if-ge v11, v4, :cond_13

    const/4 v4, 0x1

    if-ne v8, v4, :cond_11

    if-eqz p1, :cond_13

    if-eqz v11, :cond_e

    invoke-static {v2, v11, v7, v12}, Lio/netty/util/NetUtil;->isValidIPv4Mapped([BIII)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_e
    const/4 v4, 0x3

    if-ne v1, v4, :cond_f

    add-int/lit8 v4, v6, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v6, -0x2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v6, -0x3

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_f
    const/4 v4, 0x2

    if-ne v1, v4, :cond_10

    add-int/lit8 v4, v6, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v6, -0x2

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_10
    const/4 v4, 0x1

    if-ne v1, v4, :cond_11

    add-int/lit8 v4, v6, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_8

    :cond_11
    rsub-int/lit8 v1, v1, 0x3

    const/4 v4, 0x2

    shl-int/2addr v1, v4

    shl-int v1, v13, v1

    and-int/lit8 v4, v1, 0xf

    mul-int/lit8 v4, v4, 0x64

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    const/16 v4, 0x8

    shr-int/2addr v1, v4

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v5, v1

    if-ltz v5, :cond_13

    const/16 v1, 0xff

    if-le v5, v1, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v1, v11, 0x1

    int-to-byte v4, v5

    aput-byte v4, v2, v11

    move v11, v1

    goto/16 :goto_5

    :goto_7
    add-int/2addr v6, v1

    const/16 v1, 0x10

    goto/16 :goto_0

    :cond_13
    :goto_8
    return-object v17

    :cond_14
    const/4 v1, 0x1

    if-lez v7, :cond_15

    goto :goto_9

    :cond_15
    const/4 v1, 0x0

    :goto_9
    if-lez v8, :cond_1d

    if-lez v9, :cond_16

    sub-int v3, v6, v9

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1c

    goto :goto_a

    :cond_16
    const/4 v4, 0x3

    :goto_a
    if-ne v8, v4, :cond_1c

    const/16 v3, 0x10

    if-lt v11, v3, :cond_17

    goto :goto_e

    :cond_17
    if-nez v10, :cond_18

    const/4 v0, 0x2

    const/16 v12, 0xc

    goto :goto_d

    :cond_18
    const/4 v3, 0x2

    if-lt v10, v3, :cond_1c

    if-nez v1, :cond_1a

    const/4 v3, 0x6

    if-ne v10, v3, :cond_1a

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_19

    goto :goto_b

    :cond_19
    const/4 v0, 0x2

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    const/16 v5, 0x3a

    :goto_b
    if-eqz v1, :cond_1c

    const/16 v1, 0x8

    if-ge v10, v1, :cond_1c

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_19

    const/4 v0, 0x2

    if-gt v7, v0, :cond_1c

    :goto_c
    add-int/lit8 v12, v12, -0x2

    :goto_d
    sub-int/2addr v6, v9

    const/4 v1, 0x3

    rsub-int/lit8 v4, v6, 0x3

    shl-int/lit8 v0, v4, 0x2

    shl-int v0, v13, v0

    and-int/lit8 v1, v0, 0xf

    mul-int/lit8 v1, v1, 0x64

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v1

    const/16 v1, 0x8

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v3, v0

    if-ltz v3, :cond_1c

    const/16 v0, 0xff

    if-le v3, v0, :cond_1b

    goto :goto_e

    :cond_1b
    add-int/lit8 v0, v11, 0x1

    int-to-byte v1, v3

    aput-byte v1, v2, v11

    goto/16 :goto_12

    :cond_1c
    :goto_e
    return-object v17

    :cond_1d
    add-int/lit8 v5, v3, -0x1

    if-lez v9, :cond_1e

    sub-int v15, v6, v9

    if-gt v15, v4, :cond_2c

    :cond_1e
    const/4 v15, 0x2

    if-lt v10, v15, :cond_2c

    if-nez v1, :cond_1f

    add-int/lit8 v15, v10, 0x1

    const/16 v4, 0x8

    if-ne v15, v4, :cond_2c

    const/4 v15, 0x0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0x3a

    if-eq v4, v15, :cond_2c

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v15, :cond_2c

    goto :goto_f

    :cond_1f
    const/16 v15, 0x3a

    :goto_f
    if-eqz v1, :cond_21

    const/16 v1, 0x8

    if-gt v10, v1, :cond_2c

    if-ne v10, v1, :cond_21

    const/4 v1, 0x2

    if-gt v7, v1, :cond_20

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v15, :cond_2c

    :cond_20
    const/16 v1, 0xe

    if-lt v7, v1, :cond_21

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_2c

    :cond_21
    add-int/lit8 v1, v11, 0x1

    const/16 v4, 0x10

    if-ge v1, v4, :cond_2c

    const/4 v4, 0x2

    if-gez v9, :cond_22

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_2c

    goto :goto_10

    :cond_22
    const/16 v5, 0x3a

    :goto_10
    if-le v7, v4, :cond_23

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_23

    goto/16 :goto_17

    :cond_23
    if-ltz v9, :cond_24

    sub-int/2addr v6, v9

    const/4 v0, 0x4

    if-gt v6, v0, :cond_25

    rsub-int/lit8 v3, v6, 0x4

    shl-int/2addr v3, v4

    shl-int/2addr v13, v3

    goto :goto_11

    :cond_24
    const/4 v0, 0x4

    :cond_25
    :goto_11
    and-int/lit8 v3, v13, 0xf

    shl-int/2addr v3, v0

    shr-int/lit8 v4, v13, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    const/4 v3, 0x2

    add-int/2addr v3, v11

    shr-int/lit8 v4, v13, 0x8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v0, v4, 0x4

    const/16 v4, 0xc

    shr-int/lit8 v4, v13, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    move v0, v3

    :goto_12
    add-int v1, v0, v12

    const/16 v3, 0x10

    if-nez v14, :cond_27

    if-lt v1, v3, :cond_26

    goto :goto_14

    :cond_26
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v12, :cond_2a

    add-int v1, v0, v7

    add-int v4, v1, v12

    if-ge v4, v3, :cond_2a

    aget-byte v5, v2, v1

    aput-byte v5, v2, v4

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    :goto_14
    if-lt v1, v3, :cond_28

    add-int/lit8 v7, v7, 0x1

    :cond_28
    :goto_15
    if-ge v0, v3, :cond_2a

    const/16 v1, 0xf

    :goto_16
    if-lt v1, v7, :cond_29

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v2, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_29
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2a
    if-lez v8, :cond_2b

    const/16 v0, 0xb

    const/4 v1, -0x1

    aput-byte v1, v2, v0

    aput-byte v1, v2, v16

    :cond_2b
    return-object v2

    :cond_2c
    :goto_17
    return-object v17
.end method

.method private static inRangeEndExclusive(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intToIpAddress(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ipv4WordToByte(Ljava/lang/String;II)B
    .locals 2

    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v1, p2, :cond_0

    int-to-byte p0, v0

    return p0

    :cond_0
    mul-int/lit8 v0, v0, 0xa

    invoke-static {p0, v1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    if-ne p1, p2, :cond_1

    int-to-byte p0, v0

    return p0

    :cond_1
    mul-int/lit8 v0, v0, 0xa

    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    move-result p0

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public static isIpV4StackPreferred()Z
    .locals 1

    sget-boolean v0, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    return v0
.end method

.method public static isIpV6AddressesPreferred()Z
    .locals 1

    sget-boolean v0, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    return v0
.end method

.method private static isValidHexChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidIPv4Mapped([BIII)Z
    .locals 4

    add-int/2addr p3, p2

    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/16 v0, 0xc

    if-gt p1, v0, :cond_2

    const/4 v3, 0x2

    if-lt p1, v3, :cond_2

    if-eqz p3, :cond_1

    if-ge p2, v0, :cond_2

    :cond_1
    add-int/lit8 p2, p1, -0x1

    aget-byte p2, p0, p2

    add-int/lit8 v0, p1, -0x2

    aget-byte v0, p0, v0

    invoke-static {p2, v0, p3}, Lio/netty/util/NetUtil;->isValidIPv4MappedSeparators(BBZ)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, -0x3

    invoke-static {p0, v1, p1}, Lio/netty/util/internal/PlatformDependent;->isZero([BII)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static isValidIPv4MappedChar(C)Z
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isValidIPv4MappedSeparators(BBZ)Z
    .locals 0

    if-ne p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidIpV4Address(Lio/netty/util/AsciiString;II)Z
    .locals 3

    .line 1
    sub-int v0, p2, p1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v0, 0x2

    invoke-virtual {p0, v1, p1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p1, v2

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v2

    invoke-static {p0, v0, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isValidIpV4Address(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private static isValidIpV4Address(Ljava/lang/CharSequence;II)Z
    .locals 1

    .line 3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/util/AsciiString;

    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Lio/netty/util/AsciiString;II)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address0(Ljava/lang/CharSequence;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 3

    .line 5
    sub-int v0, p2, p1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v0, 0x2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p1, v2

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v2

    invoke-static {p0, v0, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isValidIpV4Address0(Ljava/lang/CharSequence;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2e

    invoke-static {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v0, 0x2

    invoke-static {p0, v1, p1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p1, v2

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v2

    invoke-static {p0, v0, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 6

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_6

    const/4 v2, 0x3

    if-gt p2, v2, :cond_6

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x39

    if-ne p2, v2, :cond_4

    add-int/lit8 p2, p1, 0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_3

    add-int/lit8 p1, p1, 0x2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v4, :cond_3

    const/16 p1, 0x31

    if-gt v3, p1, :cond_1

    if-gt p2, v5, :cond_1

    if-le p0, v5, :cond_2

    :cond_1
    const/16 p1, 0x32

    if-ne v3, p1, :cond_3

    const/16 p1, 0x35

    if-gt p2, p1, :cond_3

    if-le p0, p1, :cond_2

    if-ge p2, p1, :cond_3

    if-gt p0, v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-gt v3, v5, :cond_6

    if-eq p2, v1, :cond_5

    add-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_0
    return v0
.end method

.method public static isValidIpV6Address(Ljava/lang/CharSequence;)Z
    .locals 14

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x3a

    if-ne v3, v6, :cond_4

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v4, 0x2

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_1
    move v7, v4

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x7

    if-ge v7, v0, :cond_17

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    return v1

    :cond_6
    const/16 v11, 0x25

    if-eq v10, v11, :cond_16

    const/16 v12, 0x2e

    if-eq v10, v12, :cond_b

    if-eq v10, v6, :cond_7

    return v1

    :cond_7
    if-le v2, v9, :cond_8

    return v1

    :cond_8
    add-int/lit8 v9, v7, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_a

    if-ltz v3, :cond_9

    return v1

    :cond_9
    move v3, v9

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-gez v3, :cond_c

    const/4 v5, 0x6

    if-ne v2, v5, :cond_e

    :cond_c
    if-ne v2, v9, :cond_d

    if-ge v3, v4, :cond_e

    :cond_d
    if-le v2, v9, :cond_f

    :cond_e
    return v1

    :cond_f
    sub-int/2addr v7, v8

    add-int/lit8 v2, v7, -0x2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v2, v7, -0x3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v2, v7, -0x4

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v2, v7, -0x5

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v2, v7, -0x7

    goto :goto_6

    :cond_11
    :goto_5
    return v1

    :cond_12
    :goto_6
    if-lt v2, v4, :cond_14

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_13

    if-eq v3, v6, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v7, 0x7

    invoke-static {p0, v11, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    if-gez v1, :cond_15

    goto :goto_7

    :cond_15
    move v0, v1

    :goto_7
    invoke-static {p0, v7, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_16
    move v0, v7

    :cond_17
    if-gez v3, :cond_19

    if-ne v2, v9, :cond_18

    if-lez v8, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    :cond_19
    add-int/lit8 p0, v3, 0x2

    if-eq p0, v0, :cond_1a

    if-lez v8, :cond_1b

    const/16 p0, 0x8

    if-lt v2, p0, :cond_1a

    if-gt v3, v4, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public static isValidIpV6Address(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isValidNumericChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 p1, 0x5d

    const/16 v2, 0x5b

    if-le v0, v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2

    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p2
.end method

.method private static sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v1, "sysctl"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw p0
.end method

.method public static toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;
    .locals 2

    .line 2
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toAddressString([BIZ)Ljava/lang/String;
    .locals 9

    .line 3
    const/16 v0, 0x8

    new-array v1, v0, [I

    add-int/lit8 v2, p1, 0x8

    :goto_0
    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    shl-int/lit8 v4, p1, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    add-int/2addr v4, v3

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_1
    if-ge v2, v0, :cond_4

    aget v7, v1, v2

    if-nez v7, :cond_1

    if-gez v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_1
    if-ltz v4, :cond_3

    sub-int v7, v2, v4

    if-le v7, v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    move v6, v4

    const/4 v4, -0x1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-ltz v4, :cond_5

    sub-int/2addr v2, v4

    if-le v2, v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    if-ne v5, v3, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move p0, v4

    :goto_5
    add-int/2addr v5, p0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x3a

    if-gez v5, :cond_7

    aget p0, v1, p1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-ge v3, v0, :cond_10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget p0, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-static {p1, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v6

    const-string v7, "::"

    const/4 v8, 0x5

    if-eqz v6, :cond_8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    if-ne v5, v8, :cond_9

    aget p2, v1, v8

    const v6, 0xffff

    if-ne p2, v6, :cond_9

    const/4 p1, 0x1

    goto :goto_7

    :cond_8
    aget p2, v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_7
    if-ge v3, v0, :cond_10

    invoke-static {v3, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result p2

    if-nez p2, :cond_e

    add-int/lit8 p2, v3, -0x1

    invoke-static {p2, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result p2

    const/16 v6, 0x2e

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    const/4 p2, 0x6

    if-ne v3, p2, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_b
    :goto_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    :goto_9
    if-eqz p1, :cond_d

    if-le v3, v8, :cond_d

    aget p2, v1, v3

    shr-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_d
    aget p2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    add-int/lit8 p2, v3, -0x1

    invoke-static {p2, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSocketAddressString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lio/netty/util/NetUtil;->getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    instance-of p0, p0, Ljava/net/Inet4Address;

    invoke-static {v1, v0, p0}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validIpV4ToBytes(Ljava/lang/String;)[B
    .locals 8

    const/16 v0, 0x2e

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v4

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    add-int/2addr v2, v6

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-static {p0, v5, v2}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v5

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-static {p0, v7, v0}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p0, v0, v7}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    move-result p0

    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v4, v0, v3

    aput-byte v5, v0, v1

    aput-byte v2, v0, v6

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method
