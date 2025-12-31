.class public Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/handler/multiton/SingleSessionIoHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;->session:Lorg/apache/mina/core/session/IoSession;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public exceptionCaught(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/handler/multiton/SingleSessionIoHandlerAdapter;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public messageReceived(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public messageSent(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public sessionClosed()V
    .locals 0

    return-void
.end method

.method public sessionCreated()V
    .locals 0

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    return-void
.end method

.method public sessionOpened()V
    .locals 0

    return-void
.end method
