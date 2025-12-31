.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, ""

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->hasNextToken()Z

    move-result v3

    if-eqz v3, :cond_a

    if-lez p3, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isText()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v3, "tr"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const-string v3, "tc"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_4

    const-string v1, "\t"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const-string v3, "p"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "tbl"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "sdt"

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    if-lez v2, :cond_7

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->isEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method private isStartToken(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
