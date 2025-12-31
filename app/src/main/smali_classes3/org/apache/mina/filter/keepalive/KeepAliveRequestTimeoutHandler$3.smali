.class final Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    new-instance p2, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A keep-alive response message was not received within "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " second(s)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
