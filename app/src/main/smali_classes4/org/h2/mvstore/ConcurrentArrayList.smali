.class public Lorg/h2/mvstore/ConcurrentArrayList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/ConcurrentArrayList$1;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/ConcurrentArrayList$1;-><init>(Lorg/h2/mvstore/ConcurrentArrayList;)V

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public declared-synchronized removeFirst(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v0, p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeLast(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/ConcurrentArrayList;->peekLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/ConcurrentArrayList;->array:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
