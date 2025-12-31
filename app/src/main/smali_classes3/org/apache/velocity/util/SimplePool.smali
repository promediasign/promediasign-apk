.class public final Lorg/apache/velocity/util/SimplePool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private current:I

.field private max:I

.field private pool:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/util/SimplePool;->current:I

    iput p1, p0, Lorg/apache/velocity/util/SimplePool;->max:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/velocity/util/SimplePool;->pool:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/velocity/util/SimplePool;->current:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/velocity/util/SimplePool;->pool:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/velocity/util/SimplePool;->current:I

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/velocity/util/SimplePool;->current:I

    iget v1, p0, Lorg/apache/velocity/util/SimplePool;->max:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/velocity/util/SimplePool;->current:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/util/SimplePool;->pool:[Ljava/lang/Object;

    aput-object p1, v1, v0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
