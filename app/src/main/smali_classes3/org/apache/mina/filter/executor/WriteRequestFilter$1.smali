.class Lorg/apache/mina/filter/executor/WriteRequestFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/filter/executor/WriteRequestFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/WriteFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

.field final synthetic val$e:Lorg/apache/mina/core/session/IoEvent;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/executor/WriteRequestFilter;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

    iput-object p2, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->val$e:Lorg/apache/mina/core/session/IoEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/core/future/WriteFuture;

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->operationComplete(Lorg/apache/mina/core/future/WriteFuture;)V

    return-void
.end method

.method public operationComplete(Lorg/apache/mina/core/future/WriteFuture;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

    invoke-static {p1}, Lorg/apache/mina/filter/executor/WriteRequestFilter;->access$000(Lorg/apache/mina/filter/executor/WriteRequestFilter;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->this$0:Lorg/apache/mina/filter/executor/WriteRequestFilter;

    iget-object v1, p0, Lorg/apache/mina/filter/executor/WriteRequestFilter$1;->val$e:Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    return-void
.end method
