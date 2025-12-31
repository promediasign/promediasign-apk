.class public Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;
.super Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method


# virtual methods
.method public saveImpl(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p2, Ljava/util/zip/ZipOutputStream;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/util/zip/ZipOutputStream;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p2, v2

    :goto_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "[Content_Types].xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-static {p1, p2}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot write: [Content_Types].xml in Zip !"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return v1
.end method
