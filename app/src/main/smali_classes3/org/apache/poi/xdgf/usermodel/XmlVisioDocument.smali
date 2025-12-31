.class public Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;
.super Lorg/apache/poi/POIXMLDocument;
.source "SourceFile"


# instance fields
.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

.field protected _masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

.field protected _pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 2
    const-string v0, "http://schemas.microsoft.com/visio/2010/relationships/document"

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentDocument1$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentDocument1;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAllEmbedds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xdgf/usermodel/XDGFPage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->getPageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p1

    return-object p1
.end method

.method public onDocumentRead()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    iput-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_masters:Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;->onDocumentRead()V

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->_pages:Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/XDGFPages;->onDocumentRead()V

    return-void
.end method
