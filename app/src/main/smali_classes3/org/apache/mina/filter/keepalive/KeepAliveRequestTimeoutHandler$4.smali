.class final Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;
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


# instance fields
.field private final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public keepAliveRequestTimedOut(Lorg/apache/mina/filter/keepalive/KeepAliveFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$4;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/apache/mina/filter/keepalive/KeepAliveFilter;->getRequestTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Closing the session because a keep-alive response message was not received within {} second(s)."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method
