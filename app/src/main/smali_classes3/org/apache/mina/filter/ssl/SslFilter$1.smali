.class Lorg/apache/mina/filter/ssl/SslFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/filter/ssl/SslFilter;->filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field final synthetic this$0:Lorg/apache/mina/filter/ssl/SslFilter;

.field final synthetic val$nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field final synthetic val$session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter$1;->this$0:Lorg/apache/mina/filter/ssl/SslFilter;

    iput-object p2, p0, Lorg/apache/mina/filter/ssl/SslFilter$1;->val$nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iput-object p3, p0, Lorg/apache/mina/filter/ssl/SslFilter$1;->val$session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter$1;->val$nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter$1;->val$session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method
