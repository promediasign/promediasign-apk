.class public Lcom/scand/svg/css/SparseStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scand/svg/css/SparseStack$Entry;
    }
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/SparseStack;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/scand/svg/css/SparseStack$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/scand/svg/css/SparseStack$Entry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public pop()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/SparseStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/css/SparseStack$Entry;

    iget v1, v0, Lcom/scand/svg/css/SparseStack$Entry;->depth:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/scand/svg/css/SparseStack;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, v0, Lcom/scand/svg/css/SparseStack$Entry;->content:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stack underflow"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/scand/svg/css/SparseStack$Entry;->depth:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/scand/svg/css/SparseStack;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/scand/svg/css/SparseStack$Entry;

    iget v0, p1, Lcom/scand/svg/css/SparseStack$Entry;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/scand/svg/css/SparseStack$Entry;->depth:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/SparseStack;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/scand/svg/css/SparseStack$Entry;

    invoke-direct {v1, p1}, Lcom/scand/svg/css/SparseStack$Entry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
