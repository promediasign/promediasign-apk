.class public final Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
.super Lorg/apache/mina/core/future/DefaultConnectFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final deadline:J

.field private final handle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field private final sessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;Ljava/lang/Object;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    iput-object p2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoConnector;->getConnectTimeoutMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    :goto_0
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->sessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    return-wide v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->cancel()V

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->access$1500(Lorg/apache/mina/core/polling/AbstractPollingIoConnector;)V

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoConnector;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->wakeup()V

    :cond_0
    return-void
.end method

.method public getDeadline()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->deadline:J

    return-wide v0
.end method

.method public getHandle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->handle:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionInitializer()Lorg/apache/mina/core/session/IoSessionInitializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;->sessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    return-object v0
.end method
