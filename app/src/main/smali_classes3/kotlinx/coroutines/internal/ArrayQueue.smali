.class public Lkotlinx/coroutines/internal/ArrayQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private elements:[Ljava/lang/Object;

.field private head:I

.field private tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private final ensureCapacity()V
    .locals 14

    iget-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v6, v0

    shl-int/lit8 v1, v6, 0x1

    new-array v13, v1, [Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, v13

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iget-object v7, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    array-length v0, v7

    iget v11, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    sub-int v9, v0, v11

    const/4 v12, 0x4

    const/4 v10, 0x0

    move-object v8, v13

    invoke-static/range {v7 .. v12}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iput-object v13, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    iput v6, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/ArrayQueue;->ensureCapacity()V

    :cond_0
    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->tail:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->elements:[Ljava/lang/Object;

    aget-object v3, v1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->head:I

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
