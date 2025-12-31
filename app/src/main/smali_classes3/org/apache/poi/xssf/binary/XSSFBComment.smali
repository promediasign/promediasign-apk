.class Lorg/apache/poi/xssf/binary/XSSFBComment;
.super Lorg/apache/poi/xssf/usermodel/XSSFComment;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final author:Ljava/lang/String;

.field private final cellAddress:Lorg/apache/poi/ss/util/CellAddress;

.field private final comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/util/CellAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->visible:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->author:Ljava/lang/String;

    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    invoke-direct {p1, p3}, Lorg/apache/poi/xssf/binary/XSSFBRichTextString;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    return-void
.end method


# virtual methods
.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v0

    return v0
.end method

.method public getRow()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->cellAddress:Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBComment;->getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->comment:Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    return-object v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/binary/XSSFBComment;->getString()Lorg/apache/poi/xssf/binary/XSSFBRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/binary/XSSFBComment;->visible:Z

    return v0
.end method

.method public setAddress(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "XSSFBComment is read only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XSSFBComment is read only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XSSFBComment is read only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColumn(I)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XSSFBComment is read only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRow(I)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XSSFBComment is read only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XSSFBComment is read only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisible(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "XSSFBComment is read only."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
