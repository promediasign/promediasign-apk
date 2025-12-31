.class public Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _defaultFillStyle:J

.field _defaultGuideStyle:J

.field _defaultLineStyle:J

.field _defaultTextStyle:J

.field protected _document:Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;

.field _styleSheets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    iput-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public getDefaultFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "No default fill style found!"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultGuideStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "No default guide style found!"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "No default line style found!"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/POIXMLException;

    const-string v1, "No default text style found!"

    invoke-direct {v0, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    return-object p1
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
