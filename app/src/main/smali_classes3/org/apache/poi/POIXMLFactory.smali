.class public abstract Lorg/apache/poi/POIXMLFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static final ORPHAN_PART:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final PARENT_PART:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lorg/apache/poi/POIXMLFactory;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIXMLFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    const-class v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lorg/apache/poi/POIXMLDocumentPart;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/POIXMLFactory;->PARENT_PART:[Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Class;

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/poi/POIXMLFactory;->ORPHAN_PART:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;
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
.end method

.method public createDocumentPart(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLFactory;->getPackageRelationship(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/POIXMLFactory;->getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelationClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelationClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    sget-object v3, Lorg/apache/poi/POIXMLFactory;->PARENT_PART:[Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    :try_start_1
    sget-object p1, Lorg/apache/poi/POIXMLFactory;->ORPHAN_PART:[Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, v2, p1, v1}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_0
    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    sget-object v3, Lorg/apache/poi/POIXMLFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "using default POIXMLDocumentPart for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-virtual {v3, v1, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object v0
.end method

.method public abstract getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;
.end method

.method public getPackageRelationship(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string p2, "package part isn\'t a child of the parent document."

    invoke-direct {p1, p2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    new-instance p2, Lorg/apache/poi/POIXMLException;

    const-string v0, "error while determining package relations"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newDocumentPart(Lorg/apache/poi/POIXMLRelation;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLRelation;->getRelationClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/poi/POIXMLFactory;->createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
