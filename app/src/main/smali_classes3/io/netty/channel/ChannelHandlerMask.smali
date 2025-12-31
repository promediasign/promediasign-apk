.class final Lio/netty/channel/ChannelHandlerMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/ChannelHandlerMask$Skip;
    }
.end annotation


# static fields
.field private static final MASKS:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MASK_ALL_INBOUND:I = 0x1ff

.field private static final MASK_ALL_OUTBOUND:I = 0x1fe01

.field static final MASK_BIND:I = 0x200

.field static final MASK_CHANNEL_ACTIVE:I = 0x8

.field static final MASK_CHANNEL_INACTIVE:I = 0x10

.field static final MASK_CHANNEL_READ:I = 0x20

.field static final MASK_CHANNEL_READ_COMPLETE:I = 0x40

.field static final MASK_CHANNEL_REGISTERED:I = 0x2

.field static final MASK_CHANNEL_UNREGISTERED:I = 0x4

.field static final MASK_CHANNEL_WRITABILITY_CHANGED:I = 0x100

.field static final MASK_CLOSE:I = 0x1000

.field static final MASK_CONNECT:I = 0x400

.field static final MASK_DEREGISTER:I = 0x2000

.field static final MASK_DISCONNECT:I = 0x800

.field static final MASK_EXCEPTION_CAUGHT:I = 0x1

.field static final MASK_FLUSH:I = 0x10000

.field static final MASK_ONLY_INBOUND:I = 0x1fe

.field static final MASK_ONLY_OUTBOUND:I = 0x1fe00

.field static final MASK_READ:I = 0x4000

.field static final MASK_USER_EVENT_TRIGGERED:I = 0x80

.field static final MASK_WRITE:I = 0x8000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/channel/ChannelHandlerMask;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/ChannelHandlerMask;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v0, Lio/netty/channel/ChannelHandlerMask$1;

    invoke-direct {v0}, Lio/netty/channel/ChannelHandlerMask$1;-><init>()V

    sput-object v0, Lio/netty/channel/ChannelHandlerMask;->MASKS:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/channel/ChannelHandlerMask;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private static varargs isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    new-instance v0, Lio/netty/channel/ChannelHandlerMask$2;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/channel/ChannelHandlerMask$2;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static mask(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Lio/netty/channel/ChannelHandlerMask;->MASKS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-static {p0}, Lio/netty/channel/ChannelHandlerMask;->mask0(Ljava/lang/Class;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static mask0(Ljava/lang/Class;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ChannelHandler;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-class v4, Ljava/net/SocketAddress;

    const-class v5, Lio/netty/channel/ChannelPromise;

    :try_start_0
    const-class v6, Lio/netty/channel/ChannelInboundHandler;

    invoke-virtual {v6, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-class v7, Ljava/lang/Object;

    const-class v8, Lio/netty/channel/ChannelHandlerContext;

    if-eqz v6, :cond_7

    const/16 v6, 0x1ff

    :try_start_1
    const-string v9, "channelRegistered"

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_0

    const/16 v6, 0x1fd

    :cond_0
    :try_start_2
    const-string v9, "channelUnregistered"

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/lit8 v6, v6, -0x5

    :cond_1
    const-string v9, "channelActive"

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/lit8 v6, v6, -0x9

    :cond_2
    const-string v9, "channelInactive"

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    and-int/lit8 v6, v6, -0x11

    :cond_3
    const-string v9, "channelRead"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v8, v10, v2

    aput-object v7, v10, v3

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    and-int/lit8 v6, v6, -0x21

    :cond_4
    const-string v9, "channelReadComplete"

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    and-int/lit8 v6, v6, -0x41

    :cond_5
    const-string v9, "channelWritabilityChanged"

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    and-int/lit16 v6, v6, -0x101

    :cond_6
    const-string v9, "userEventTriggered"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v8, v10, v2

    aput-object v7, v10, v3

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_8

    and-int/lit16 v6, v6, -0x81

    goto :goto_0

    :catch_0
    move-exception p0

    move v3, v6

    goto/16 :goto_1

    :catch_1
    move-exception p0

    const/16 v3, 0x1ff

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x1

    :cond_8
    :goto_0
    const-class v9, Lio/netty/channel/ChannelOutboundHandler;

    invoke-virtual {v9, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_10

    const v9, 0x1fe01

    or-int/2addr v6, v9

    const-string v9, "bind"

    new-array v10, v0, [Ljava/lang/Class;

    aput-object v8, v10, v2

    aput-object v4, v10, v3

    aput-object v5, v10, v1

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    and-int/lit16 v6, v6, -0x201

    :cond_9
    const-string v9, "connect"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    aput-object v8, v10, v2

    aput-object v4, v10, v3

    aput-object v4, v10, v1

    aput-object v5, v10, v0

    invoke-static {p0, v9, v10}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    and-int/lit16 v6, v6, -0x401

    :cond_a
    const-string v4, "disconnect"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v8, v9, v2

    aput-object v5, v9, v3

    invoke-static {p0, v4, v9}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    and-int/lit16 v6, v6, -0x801

    :cond_b
    const-string v4, "close"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v8, v9, v2

    aput-object v5, v9, v3

    invoke-static {p0, v4, v9}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    and-int/lit16 v6, v6, -0x1001

    :cond_c
    const-string v4, "deregister"

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v8, v9, v2

    aput-object v5, v9, v3

    invoke-static {p0, v4, v9}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d

    and-int/lit16 v6, v6, -0x2001

    :cond_d
    const-string v4, "read"

    new-array v9, v3, [Ljava/lang/Class;

    aput-object v8, v9, v2

    invoke-static {p0, v4, v9}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    and-int/lit16 v6, v6, -0x4001

    :cond_e
    const-string v4, "write"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v8, v0, v2

    aput-object v7, v0, v3

    aput-object v5, v0, v1

    invoke-static {p0, v4, v0}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, -0x8001

    and-int/2addr v0, v6

    move v6, v0

    :cond_f
    const-string v0, "flush"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v8, v4, v2

    invoke-static {p0, v0, v4}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, -0x10001

    and-int/2addr v6, v0

    :cond_10
    const-string v0, "exceptionCaught"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v8, v1, v2

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_11

    and-int/lit8 v6, v6, -0x2

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    move v6, v3

    :cond_11
    :goto_2
    return v6
.end method
