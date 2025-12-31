.class public final Lcom/fasterxml/aalto/in/FixedNsContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# static fields
.field public static final EMPTY_CONTEXT:Lcom/fasterxml/aalto/in/FixedNsContext;


# instance fields
.field protected final _declarationData:[Ljava/lang/String;

.field protected final _lastDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

.field protected _tmpDecl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fasterxml/aalto/in/FixedNsContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/aalto/in/FixedNsContext;-><init>(Lcom/fasterxml/aalto/in/NsDeclaration;[Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/aalto/in/FixedNsContext;->EMPTY_CONTEXT:Lcom/fasterxml/aalto/in/FixedNsContext;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/aalto/in/NsDeclaration;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_tmpDecl:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_lastDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_0
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    aget-object p1, v0, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null prefix not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "xml"

    return-object p1

    :cond_0
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "xmlns"

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    aget-object v4, v0, v3

    add-int/lit8 v5, v2, 0x1

    :goto_1
    if-ge v5, v1, :cond_3

    aget-object v6, v0, v5

    if-ne v6, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_3
    aget-object p1, v0, v3

    return-object p1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty prefix as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "xml"

    :goto_0
    invoke-static {p1}, Lorg/codehaus/stax2/ri/SingletonIterator;->create(Ljava/lang/Object;)Lorg/codehaus/stax2/ri/SingletonIterator;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "xmlns"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v3, v2

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v1, :cond_8

    aget-object v5, v0, v4

    if-eq v5, p1, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    add-int/lit8 v6, v4, 0x1

    :goto_2
    if-ge v6, v1, :cond_4

    aget-object v7, v0, v6

    if-ne v7, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    move-object v3, v5

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz v3, :cond_a

    invoke-static {v3}, Lorg/codehaus/stax2/ri/SingletonIterator;->create(Ljava/lang/Object;)Lorg/codehaus/stax2/ri/SingletonIterator;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty prefix as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reuseOrCreate(Lcom/fasterxml/aalto/in/NsDeclaration;)Lcom/fasterxml/aalto/in/FixedNsContext;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_lastDeclaration:Lcom/fasterxml/aalto/in/NsDeclaration;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/fasterxml/aalto/in/FixedNsContext;->EMPTY_CONTEXT:Lcom/fasterxml/aalto/in/FixedNsContext;

    if-ne p0, v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getCurrNsURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/fasterxml/aalto/in/FixedNsContext;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/aalto/in/FixedNsContext;-><init>(Lcom/fasterxml/aalto/in/NsDeclaration;[Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_tmpDecl:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_tmpDecl:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_tmpDecl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_tmpDecl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getCurrNsURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/fasterxml/aalto/in/NsDeclaration;->getPrev()Lcom/fasterxml/aalto/in/NsDeclaration;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/fasterxml/aalto/in/FixedNsContext;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_tmpDecl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/aalto/in/FixedNsContext;-><init>(Lcom/fasterxml/aalto/in/NsDeclaration;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/fasterxml/aalto/in/FixedNsContext;->EMPTY_CONTEXT:Lcom/fasterxml/aalto/in/FixedNsContext;

    if-ne p0, v0, :cond_0

    const-string v0, "[EMPTY non-transient NsContext]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"->\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fasterxml/aalto/in/FixedNsContext;->_declarationData:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
