.class Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/ExpirationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/ExpiringSessionRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultExpirationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/util/ExpirationListener<",
        "Lorg/apache/mina/core/session/IoSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/ExpiringSessionRecycler;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;->this$0:Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;Lorg/apache/mina/core/session/ExpiringSessionRecycler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;-><init>(Lorg/apache/mina/core/session/ExpiringSessionRecycler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic expired(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/ExpiringSessionRecycler$DefaultExpirationListener;->expired(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public expired(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method
