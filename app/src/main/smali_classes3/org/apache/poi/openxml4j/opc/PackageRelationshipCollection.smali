.class public final Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private internalRelationshipsByTargetName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private nextRelationshipId:I

.field private partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field private relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private relationshipsByID:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private relationshipsByType:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByType:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipPart()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "part"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "container needs to be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 4
    iget-object v0, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 8

    .line 1
    if-nez p4, :cond_1

    iget p4, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "rId"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0, p4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    move-object v7, p4

    new-instance p4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByType:Ljava/util/TreeMap;

    invoke-virtual {p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p4
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByType:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByType:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public findExistingInternalRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-object p1
.end method

.method public getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 4

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    add-int/lit8 v3, v1, 0x1

    if-ne p1, v1, :cond_0

    return-object v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-object p1
.end method

.method public getRelationships(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Ljava/lang/String;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "Parsing relationship: "

    const/4 v3, 0x7

    :try_start_0
    sget-object v4, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v4, v2, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v4, "http://schemas.openxmlformats.org/package/2006/relationships"

    const-string v5, "Relationship"

    invoke-interface {v0, v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    const-string v8, "Id"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Type"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v0, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v4, "OPC Compliance error [M4.1]: there is more than one core properties relationship in the package !"

    invoke-direct {v0, v4}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_5

    :cond_1
    move v10, v0

    :goto_1
    const-string v0, "TargetMode"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    sget-object v11, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "internal"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v11, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    :cond_3
    :goto_2
    const-string v0, "http://invalid.uri"

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    const-string v0, "Target"

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v7}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object/from16 v7, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v13, v0

    :try_start_2
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot convert "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in a valid relationship URI-> dummy-URI used"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v1

    aput-object v13, v14, v2

    invoke-virtual {v0, v3, v14}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_4
    :try_start_3
    invoke-virtual {v7, v12, v11, v9, v8}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/2addr v6, v2

    move v0, v10

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_4
    move-object/from16 v7, p0

    return-void

    :goto_5
    sget-object v4, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->logger:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v4, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeRelationship(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByType:Ljava/util/TreeMap;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByType:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "relationshipsByID=null"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " relationship(s) = ["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 32
    .line 33
    const-string v2, ","

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 46
    .line 47
    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v1, ",relationshipPart=null"

    .line 58
    .line 59
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 76
    .line 77
    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string v1, ",sourcePart=null"

    .line 88
    .line 89
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_2
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    const-string v1, ",uri=null)"

    .line 112
    .line 113
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_3
    const-string v1, "]"

    .line 118
    .line 119
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method
