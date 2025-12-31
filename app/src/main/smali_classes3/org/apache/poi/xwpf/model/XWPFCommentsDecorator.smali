.class public Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;
.super Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;
.source "SourceFile"


# instance fields
.field private commentText:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->paragraph:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getCommentRangeStartArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;->getId()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getCommentByID(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFComment;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tComment by "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFComment;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCommentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->commentText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
