.class public Lorg/apache/xmlbeans/impl/jam/JamClassIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private mClassNames:[Ljava/lang/String;

.field private mIndex:I

.field private mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mIndex:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mClassNames:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null classes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mClassNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mIndex:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mClassNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->nextClass()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    return-object v0
.end method

.method public nextClass()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mIndex:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mLoader:Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->mClassNames:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
