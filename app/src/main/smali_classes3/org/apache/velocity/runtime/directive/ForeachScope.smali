.class public Lorg/apache/velocity/runtime/directive/ForeachScope;
.super Lorg/apache/velocity/runtime/directive/Scope;
.source "SourceFile"


# instance fields
.field protected hasNext:Z

.field protected index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/directive/Scope;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->index:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->hasNext:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFirst()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/ForeachScope;->isFirst()Z

    move-result v0

    return v0
.end method

.method public getHasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->hasNext:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->index:I

    return v0
.end method

.method public getLast()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/ForeachScope;->isLast()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/ForeachScope;->getHasNext()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 2

    iget v0, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->index:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/directive/ForeachScope;->hasNext:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
