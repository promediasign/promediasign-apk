.class public Lorg/apache/mina/core/IoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoSession;

    sput-object v0, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static await(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/IoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static await(Ljava/lang/Iterable;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z

    move-result p0

    return p0
.end method

.method public static await(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/apache/mina/core/IoUtil;->await(Ljava/lang/Iterable;J)Z

    move-result p0

    return p0
.end method

.method private static await0(Ljava/lang/Iterable;JZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;JZ)Z"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x1

    move-wide v6, p1

    const/4 v5, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/future/IoFuture;

    :goto_2
    if-eqz p3, :cond_1

    invoke-interface {v5, v6, v7}, Lorg/apache/mina/core/future/IoFuture;->await(J)Z

    move-result v6

    goto :goto_3

    :cond_1
    invoke-interface {v5, v6, v7}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    move-result v6

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    sub-long v7, p1, v7

    if-nez v6, :cond_4

    cmp-long v9, v7, v0

    if-gtz v9, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move-wide v6, v7

    goto :goto_2

    :cond_4
    :goto_4
    cmp-long v5, v7, v0

    if-gtz v5, :cond_5

    move v5, v6

    goto :goto_5

    :cond_5
    move v5, v6

    move-wide v6, v7

    goto :goto_1

    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    return v4
.end method

.method public static awaitUninterruptably(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/apache/mina/core/IoUtil;->awaitUninterruptibly(Ljava/lang/Iterable;J)Z

    move-result p0

    return p0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs broadcast(Ljava/lang/Object;[Lorg/apache/mina/core/session/IoSession;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .line 4
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v1, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    move-object v4, p0

    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;)V"
        }
    .end annotation

    .line 5
    instance-of v0, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    move-object v1, p0

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
