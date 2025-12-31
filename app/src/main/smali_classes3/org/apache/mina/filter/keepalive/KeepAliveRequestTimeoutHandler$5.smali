.class final Lorg/apache/mina/filter/keepalive/KeepAliveRequestTimeoutHandler$5;
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
    .locals 0

    new-instance p1, Ljava/lang/Error;

    const-string p2, "Shouldn\'t be invoked.  Please file a bug report."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
