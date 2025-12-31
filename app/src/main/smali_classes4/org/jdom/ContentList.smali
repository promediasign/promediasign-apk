.class final Lorg/jdom/ContentList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/ContentList$FilterListIterator;,
        Lorg/jdom/ContentList$FilterList;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ContentList.java,v $ $Revision: 1.42 $ $Date: 2007/11/10 05:28:58 $ $Name:  $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private elementData:[Lorg/jdom/Content;

.field private parent:Lorg/jdom/Parent;

.field private size:I


# direct methods
.method public constructor <init>(Lorg/jdom/Parent;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    return-void
.end method

.method public static synthetic access$000(Lorg/jdom/ContentList;)I
    .locals 0

    invoke-direct {p0}, Lorg/jdom/ContentList;->getModCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;
    .locals 0

    iget-object p0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/jdom/ContentList;)I
    .locals 0

    iget p0, p0, Lorg/jdom/ContentList;->size:I

    return p0
.end method

.method private documentCanContain(ILorg/jdom/Content;)V
    .locals 2

    instance-of v0, p2, Lorg/jdom/Element;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A root element cannot be added before the DocType"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add a second root element, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    instance-of v0, p2, Lorg/jdom/DocType;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A DocType cannot be added after the root element"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add a second doctype, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    instance-of p1, p2, Lorg/jdom/CDATA;

    if-nez p1, :cond_8

    instance-of p1, p2, Lorg/jdom/Text;

    if-nez p1, :cond_7

    instance-of p1, p2, Lorg/jdom/EntityRef;

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "An EntityRef is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A Text is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A CDATA is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static elementCanContain(ILorg/jdom/Content;)V
    .locals 0

    instance-of p0, p1, Lorg/jdom/DocType;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/jdom/IllegalAddException;

    const-string p1, "A DocType is not allowed except at the document level"

    invoke-direct {p0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getModCount()I
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method private static removeParent(Lorg/jdom/Content;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jdom/Text;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    nop

    instance-of v0, p2, Lorg/jdom/Content;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/jdom/Content;

    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    return-void

    :cond_1
    new-instance p1, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is of unrecognized type and cannot be added"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add null object"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(ILorg/jdom/Content;)V
    .locals 3

    if-eqz p2, :cond_8

    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/jdom/ContentList;->documentCanContain(ILorg/jdom/Content;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/jdom/ContentList;->elementCanContain(ILorg/jdom/Content;)V

    :goto_0
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object p1

    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_1

    new-instance p1, Lorg/jdom/IllegalAddException;

    check-cast p2, Lorg/jdom/Element;

    const-string v0, "The Content already has an existing parent document"

    invoke-direct {p1, p2, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The Content already has an existing parent \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast p1, Lorg/jdom/Element;

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    if-eq p2, v0, :cond_7

    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    instance-of v1, p2, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lorg/jdom/Element;

    check-cast v0, Lorg/jdom/Element;

    invoke-virtual {v1, v0}, Lorg/jdom/Element;->isAncestor(Lorg/jdom/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "The Element cannot be added as a descendent of itself"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    invoke-virtual {p2, v0}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jdom/ContentList;->size:I

    aput-object p2, p1, v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aput-object p2, v0, p1

    iget p1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList;->size:I

    :goto_2
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: "

    const-string v1, " Size: "

    .line 2
    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "The Element cannot be added to itself"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add null object"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    if-ltz p1, :cond_4

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-gt p1, v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/jdom/ContentList;->ensureCapacity(I)V

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

    invoke-virtual {p0, v3, v2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
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

    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

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
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/jdom/ContentList;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iput v0, p0, Lorg/jdom/ContentList;->size:I

    :cond_1
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public clearAndSet(Ljava/util/Collection;)V
    .locals 4

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    :try_start_0
    invoke-virtual {p0, v2, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iput v1, p0, Lorg/jdom/ContentList;->size:I

    throw p1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object p1, v0, v2

    invoke-static {p1}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Lorg/jdom/Content;

    iput-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

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
    new-array p1, p1, [Lorg/jdom/Content;

    iput-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    const-string v1, "Index: "

    .line 15
    .line 16
    const-string v2, " Size: "

    .line 17
    .line 18
    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public getView(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1

    new-instance v0, Lorg/jdom/ContentList$FilterList;

    invoke-direct {v0, p0, p1}, Lorg/jdom/ContentList$FilterList;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method public indexOfDocType()I
    .locals 2

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/DocType;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public indexOfFirstElement()I
    .locals 2

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/Element;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 8
    .line 9
    aget-object v0, v0, p1

    .line 10
    .line 11
    invoke-static {v0}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    .line 15
    .line 16
    sub-int/2addr v1, p1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 22
    .line 23
    add-int/lit8 v3, p1, 0x1

    .line 24
    .line 25
    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 29
    .line 30
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    iput v1, p0, Lorg/jdom/ContentList;->size:I

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object v2, p1, v1

    .line 38
    .line 39
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 40
    .line 41
    add-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 47
    .line 48
    const-string v1, "Index: "

    .line 49
    .line 50
    const-string v2, " Size: "

    .line 51
    .line 52
    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_4

    .line 6
    .line 7
    instance-of v0, p2, Lorg/jdom/Element;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    .line 12
    .line 13
    instance-of v0, v0, Lorg/jdom/Document;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    if-ne v0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    .line 27
    .line 28
    const-string p2, "Cannot add a second root element, only one is allowed"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    instance-of v0, p2, Lorg/jdom/DocType;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    .line 39
    .line 40
    instance-of v0, v0, Lorg/jdom/Document;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ltz v0, :cond_3

    .line 49
    .line 50
    if-ne v0, p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p1, Lorg/jdom/IllegalAddException;

    .line 54
    .line 55
    const-string p2, "Cannot add a second doctype, only one is allowed"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {p0, p1, v0}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw p2

    .line 74
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 75
    .line 76
    const-string v0, "Index: "

    .line 77
    .line 78
    const-string v1, " Size: "

    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uncheckedAddContent(Lorg/jdom/Content;)V
    .locals 3

    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    iput-object v0, p1, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    aput-object p1, v0, v1

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method
