.class public final Lcom/zaxxer/hikari/util/FastList;
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
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private elementData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/zaxxer/hikari/util/FastList;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/zaxxer/hikari/util/FastList;->clazz:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    iput-object v1, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lcom/zaxxer/hikari/util/FastList;->elementData:[Ljava/lang/Object;

    iget v0, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/zaxxer/hikari/util/FastList;->size:I

    return v0
.end method
