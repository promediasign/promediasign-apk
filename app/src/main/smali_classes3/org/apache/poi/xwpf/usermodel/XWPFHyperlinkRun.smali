.class public Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;
.super Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.source "SourceFile"


# instance fields
.field private hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    return-void
.end method


# virtual methods
.method public getAnchor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCTHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    return-object v0
.end method

.method public getHyperlink(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getHyperlinkId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getHyperlinkByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlinkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHyperlinkId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->hyperlink:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    return-void
.end method
