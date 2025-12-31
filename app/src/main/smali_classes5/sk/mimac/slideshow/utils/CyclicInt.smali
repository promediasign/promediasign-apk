.class public Lsk/mimac/slideshow/utils/CyclicInt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/utils/CyclicInt$Sizable;
    }
.end annotation


# instance fields
.field private i:I

.field private final lock:Ljava/lang/Object;

.field private final sizable:Lsk/mimac/slideshow/utils/CyclicInt$Sizable;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/utils/CyclicInt$Sizable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/CyclicInt;->lock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lsk/mimac/slideshow/utils/CyclicInt;->i:I

    iput-object p1, p0, Lsk/mimac/slideshow/utils/CyclicInt;->sizable:Lsk/mimac/slideshow/utils/CyclicInt$Sizable;

    return-void
.end method


# virtual methods
.method public add(I)I
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/utils/CyclicInt;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/utils/CyclicInt;->sizable:Lsk/mimac/slideshow/utils/CyclicInt$Sizable;

    invoke-interface {v1}, Lsk/mimac/slideshow/utils/CyclicInt$Sizable;->size()I

    move-result v1

    iget v2, p0, Lsk/mimac/slideshow/utils/CyclicInt;->i:I

    if-gez p1, :cond_0

    neg-int p1, p1

    rem-int/2addr p1, v1

    neg-int p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    rem-int/2addr p1, v1

    :goto_0
    add-int/2addr v2, p1

    iput v2, p0, Lsk/mimac/slideshow/utils/CyclicInt;->i:I

    if-gez v2, :cond_1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    rem-int/2addr v2, v1

    :goto_1
    iput v2, p0, Lsk/mimac/slideshow/utils/CyclicInt;->i:I

    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/utils/CyclicInt;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lsk/mimac/slideshow/utils/CyclicInt;->i:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
