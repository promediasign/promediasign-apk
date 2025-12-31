.class public Lorg/apache/velocity/util/ArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private array:Ljava/lang/Object;

.field private pos:I

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/velocity/util/ArrayIterator;->array:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/util/ArrayIterator;->pos:I

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/util/ArrayIterator;->size:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Programmer error : internal ArrayIterator invoked w/o array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/velocity/util/ArrayIterator;->pos:I

    iget v1, p0, Lorg/apache/velocity/util/ArrayIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/velocity/util/ArrayIterator;->pos:I

    iget v1, p0, Lorg/apache/velocity/util/ArrayIterator;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/util/ArrayIterator;->array:Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/velocity/util/ArrayIterator;->pos:I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No more elements: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/velocity/util/ArrayIterator;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/velocity/util/ArrayIterator;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
