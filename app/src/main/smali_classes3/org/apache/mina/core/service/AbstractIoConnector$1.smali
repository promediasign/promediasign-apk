.class Lorg/apache/mina/core/service/AbstractIoConnector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/service/AbstractIoConnector;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/AbstractIoConnector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector$1;->this$0:Lorg/apache/mina/core/service/AbstractIoConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method
