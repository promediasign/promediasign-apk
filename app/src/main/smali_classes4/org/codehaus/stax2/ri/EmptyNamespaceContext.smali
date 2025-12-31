.class public Lorg/codehaus/stax2/ri/EmptyNamespaceContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# static fields
.field static final sInstance:Lorg/codehaus/stax2/ri/EmptyNamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;

    invoke-direct {v0}, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;-><init>()V

    sput-object v0, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;->sInstance:Lorg/codehaus/stax2/ri/EmptyNamespaceContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/codehaus/stax2/ri/EmptyNamespaceContext;
    .locals 1

    sget-object v0, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;->sInstance:Lorg/codehaus/stax2/ri/EmptyNamespaceContext;

    return-object v0
.end method


# virtual methods
.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

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

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty prefix as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "xml"

    return-object p1

    :cond_0
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "xmlns"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty URI as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

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

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "xmlns"

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal to pass null/empty prefix as argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
