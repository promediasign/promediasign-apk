.class public final Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/util/zip/ZipOutputStream;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v3, "Relationships"

    const-string v4, "http://schemas.openxmlformats.org/package/2006/relationships"

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getSourcePartUriFromRelationshipPartUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    const-string v7, "Relationship"

    invoke-interface {v2, v4, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Id"

    invoke-interface {v7, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Type"

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v9, v10, :cond_0

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "TargetMode"

    const-string v9, "External"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->relativizeURI(Ljava/net/URI;Ljava/net/URI;Z)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    const-string v8, "Target"

    invoke-interface {v7, v8, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->normalize()V

    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipURIFromOPCName(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-static {v2, p2}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create zip entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p0, v2, v1

    const/4 p0, 0x7

    invoke-virtual {p2, p0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    instance-of v2, p2, Ljava/util/zip/ZipOutputStream;

    const/4 v3, 0x7

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    check-cast p2, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v4, v0, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->hasRelationships()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/util/zip/ZipOutputStream;)Z

    :cond_3
    return v1

    :goto_2
    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot write: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": in ZIP"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return v0

    :cond_4
    sget-object p1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Unexpected class "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p1, v3, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    const-string p2, "ZipOutputStream expected !"

    invoke-direct {p1, p2}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
