.class Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/IdleStatusChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionCloseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IdleStatusChecker;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;->this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatusChecker$SessionCloseListener;->this$0:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-interface {p1}, Lorg/apache/mina/core/future/IoFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {v0, p1}, Lorg/apache/mina/core/session/IdleStatusChecker;->access$100(Lorg/apache/mina/core/session/IdleStatusChecker;Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method
