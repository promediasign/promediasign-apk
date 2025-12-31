.class public Lorg/apache/poi/xwpf/usermodel/XWPFComment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected author:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected text:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->text:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;->getId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->id:Ljava/lang/String;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->author:Ljava/lang/String;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTComment;->getPArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v3, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
