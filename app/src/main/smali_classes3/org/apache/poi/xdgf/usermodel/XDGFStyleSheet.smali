.class public Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method
