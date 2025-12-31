.class Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NettyRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableProcessorsHolder"
.end annotation


# instance fields
.field private availableProcessors:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized availableProcessors()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    if-nez v0, :cond_0

    const-string v0, "io.netty.availableProcessors"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->setAvailableProcessors(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAvailableProcessors(I)V
    .locals 3

    const-string v0, "availableProcessors is already set to ["

    monitor-enter p0

    :try_start_0
    const-string v1, "availableProcessors"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    iget v1, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I

    if-nez v1, :cond_0

    iput p1, p0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], rejecting ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
