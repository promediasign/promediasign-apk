.class public Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

.field protected _pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->setMaster(Lorg/apache/poi/xdgf/usermodel/XDGFMaster;)V

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->isSetPageSheet()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->getPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;

    invoke-direct {p2, v0, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    return-object v0
.end method

.method public getID()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageSheet()Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    return-object v0
.end method

.method public getXmlObject()Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Master ID=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
