.class public Lorg/apache/poi/xdgf/usermodel/XDGFFactory;
.super Lorg/apache/poi/POIXMLFactory;
.source "SourceFile"


# instance fields
.field private final document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/POIXMLFactory;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-void
.end method


# virtual methods
.method public createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/POIXMLDocumentPart;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [Ljava/lang/Class;

    aput-object v0, p2, v2

    new-array p3, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    aput-object v0, p3, v2

    goto :goto_0

    :cond_0
    array-length v3, p2

    add-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/Class;

    array-length v4, p2

    invoke-static {p2, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    aput-object v0, v3, p2

    array-length p2, p3

    add-int/2addr p2, v1

    new-array p2, p2, [Ljava/lang/Object;

    array-length v0, p3

    invoke-static {p3, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    aput-object v0, p2, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/POIXMLDocumentPart;

    return-object p1
.end method

.method public getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    move-result-object p1

    return-object p1
.end method
