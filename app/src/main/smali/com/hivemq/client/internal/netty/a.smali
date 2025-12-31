.class public final synthetic Lcom/hivemq/client/internal/netty/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;->b(ILjava/util/concurrent/Executor;)Lio/netty/channel/epoll/EpollEventLoopGroup;

    move-result-object p1

    check-cast p1, Lio/netty/channel/MultithreadEventLoopGroup;

    return-object p1
.end method
