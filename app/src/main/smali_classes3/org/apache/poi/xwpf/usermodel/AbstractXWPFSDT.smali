.class public abstract Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;


# instance fields
.field private final part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field private final tag:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_1

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->getAliasArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->getTagArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object p1, p1, v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-void
.end method


# virtual methods
.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->CONTENTCONTROL:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->CONTENTCONTROL:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;->title:Ljava/lang/String;

    return-object v0
.end method
