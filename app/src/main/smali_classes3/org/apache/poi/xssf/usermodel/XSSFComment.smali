.class public Lorg/apache/poi/xssf/usermodel/XSSFComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# instance fields
.field private final _comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

.field private final _comments:Lorg/apache/poi/xssf/model/CommentsTable;

.field private _str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    new-instance p2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Lcom/microsoft/schemas/vml/CTShape;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getCTShape()Lcom/microsoft/schemas/vml/CTShape;

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getAuthorId()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/model/CommentsTable;->getAuthor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCTComment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    return-object v0
.end method

.method public getCTShape()Lcom/microsoft/schemas/vml/CTShape;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public getColumn()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    return v0
.end method

.method public getRow()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAddress(II)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setRef(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->referenceUpdated(Lorg/apache/poi/ss/util/CellAddress;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;)V

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/model/CommentsTable;->findAuthor(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setAuthorId(J)V

    return-void
.end method

.method public setColumn(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    return-void
.end method

.method public setRow(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getColumn()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setAddress(II)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_str:Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFComment;->_comment:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->setText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only XSSFRichTextString argument is supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method
