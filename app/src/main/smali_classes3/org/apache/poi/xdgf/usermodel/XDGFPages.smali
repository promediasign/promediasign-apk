.class public Lorg/apache/poi/xdgf/usermodel/XDGFPages;
.super Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.source "SourceFile"


# instance fields
.field _pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->_pages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onDocumentRead()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/PagesDocument$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/PagesDocument;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Lorg/apache/poi/POIXMLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/exceptions/XDGFException;->wrap(Lorg/apache/poi/POIXMLDocumentPart;Lorg/apache/poi/POIXMLException;)Lorg/apache/poi/POIXMLException;

    move-result-object v0

    throw v0
.end method
