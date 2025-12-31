.class public Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
.super Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;
.source "SourceFile"


# instance fields
.field protected _master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    return-void
.end method


# virtual methods
.method public getMaster()Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-object v0
.end method

.method public onDocumentRead()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterContentsDocument$Factory;->parse(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/visio/x2012/main/MasterContentsDocument;
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

.method public setMaster(Lorg/apache/poi/xdgf/usermodel/XDGFMaster;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->_master:Lorg/apache/poi/xdgf/usermodel/XDGFMaster;

    return-void
.end method
