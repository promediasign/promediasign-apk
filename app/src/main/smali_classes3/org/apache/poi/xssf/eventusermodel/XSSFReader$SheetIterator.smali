.class public Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final sheetIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field

.field private final sheetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end field

.field xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetRelationships()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetIterator:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;-><init>(Lorg/apache/poi/xssf/eventusermodel/XSSFReader$1;)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/SAXHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_1
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->getSheetRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getShapes()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v5, v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing drawing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". Skipping it."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v1

    const/4 v7, 0x5

    invoke-virtual {v8, v7, v9}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-direct {v7, v8}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v7}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/2addr v6, v0

    goto :goto_0

    :cond_1
    return-object v3

    :catch_0
    return-object v4
.end method

.method public getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-direct {v2, v0}, Lorg/apache/poi/xssf/model/CommentsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object v0
.end method

.method public getSheetRelationships()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->access$100()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->xssfSheetRef:Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->getId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->sheetMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
