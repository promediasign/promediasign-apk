.class Lorg/jdom/AttributeList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AttributeList.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:28:58 $ $Name:  $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5


# instance fields
.field private elementData:[Lorg/jdom/Attribute;

.field private parent:Lorg/jdom/Element;

.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Lorg/jdom/Attribute;

    iput-object p1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    goto :goto_1

    :cond_0
    array-length v1, v0

    if-le p1, v1, :cond_2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-array p1, p1, [Lorg/jdom/Attribute;

    iput-object p1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method private indexOfDuplicate(Lorg/jdom/Attribute;)I
    .locals 1

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/jdom/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p2, Lorg/jdom/Attribute;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/jdom/Attribute;

    invoke-direct {p0, p2}, Lorg/jdom/AttributeList;->indexOfDuplicate(Lorg/jdom/Attribute;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jdom/AttributeList;->add(ILorg/jdom/Attribute;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add duplicate attribute"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/jdom/IllegalAddException;

    if-nez p2, :cond_2

    const-string p2, "Cannot add null attribute"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is not an attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(ILorg/jdom/Attribute;)V
    .locals 3

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-static {p2, v0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Attribute;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-virtual {p2, v0}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jdom/AttributeList;->size:I

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aput-object p2, v0, p1

    iget p1, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/AttributeList;->size:I

    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: "

    const-string v1, " Size: "

    .line 2
    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Lorg/jdom/IllegalAddException;

    iget-object v1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-direct {p1, v1, p2, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Attribute;Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The attribute already has an existing parent \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    .line 8
    instance-of v0, p1, Lorg/jdom/Attribute;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jdom/Attribute;

    invoke-direct {p0, p1}, Lorg/jdom/AttributeList;->indexOfDuplicate(Lorg/jdom/Attribute;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/AttributeList;->add(ILorg/jdom/Attribute;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jdom/AttributeList;->set(ILorg/jdom/Attribute;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string v0, "Cannot add null attribute"

    invoke-direct {p1, v0}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " is not an attribute"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    if-ltz p1, :cond_4

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-gt p1, v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int v3, p1, v1

    invoke-virtual {p0, v3, v2}, Lorg/jdom/AttributeList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p2

    const/4 v1, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/jdom/AttributeList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    throw p2

    :cond_3
    :goto_2
    return v0

    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: "

    const-string v1, " Size: "

    .line 1
    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/AttributeList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iput v0, p0, Lorg/jdom/AttributeList;->size:I

    :cond_1
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public clearAndSet(Ljava/util/Collection;)V
    .locals 5

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    const/4 v3, 0x0

    iput v3, p0, Lorg/jdom/AttributeList;->size:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    :try_start_0
    invoke-virtual {p0, v3, p1}, Lorg/jdom/AttributeList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iput v1, p0, Lorg/jdom/AttributeList;->size:I

    throw p1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object p1, v0, v3

    invoke-virtual {p1, v2}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, " Size: "

    .line 1
    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jdom/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I
    .locals 3

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    iget-object v3, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v2, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jdom/AttributeList;->size:I

    aput-object v1, p1, v2

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, " Size: "

    .line 1
    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jdom/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom/Namespace;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jdom/AttributeList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p2, Lorg/jdom/Attribute;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/jdom/Attribute;

    invoke-direct {p0, p2}, Lorg/jdom/AttributeList;->indexOfDuplicate(Lorg/jdom/Attribute;)I

    move-result v0

    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot set duplicate attribute"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jdom/AttributeList;->set(ILorg/jdom/Attribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lorg/jdom/IllegalAddException;

    if-nez p2, :cond_3

    const-string p2, "Cannot add null attribute"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is not an attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILorg/jdom/Attribute;)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    if-ge p1, v0, :cond_2

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-static {p2, v0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Attribute;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    iget-object v1, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    aput-object p2, v1, p1

    iget-object p1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-virtual {p2, p1}, Lorg/jdom/Attribute;->setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;

    return-object v0

    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    iget-object v1, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    invoke-direct {p1, v1, p2, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Attribute;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The attribute already has an existing parent \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: "

    const-string v1, " Size: "

    .line 2
    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/jdom/AttributeList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uncheckedAddAttribute(Lorg/jdom/Attribute;)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/AttributeList;->parent:Lorg/jdom/Element;

    iput-object v0, p1, Lorg/jdom/Attribute;->parent:Lorg/jdom/Element;

    iget v0, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom/AttributeList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/jdom/AttributeList;->elementData:[Lorg/jdom/Attribute;

    iget v1, p0, Lorg/jdom/AttributeList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom/AttributeList;->size:I

    aput-object p1, v0, v1

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method
