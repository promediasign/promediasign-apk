.class public Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Hyperlink;


# instance fields
.field protected final link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field protected final record:Lorg/apache/poi/hssf/record/HyperlinkRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newDocumentLink()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newFileLink()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newUrlLink()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    iget-object p1, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->clone()Lorg/apache/poi/hssf/record/HyperlinkRecord;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstColumn(I)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLastRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLastColumn()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastColumn(I)V

    :goto_0
    return-void
.end method

.method private static getType(Lorg/apache/poi/hssf/record/HyperlinkRecord;)Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->isFileLink()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->isDocumentLink()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    iget-object p1, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLastColumn()I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLastRow()I

    move-result v0

    return v0
.end method

.method public getShortFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getShortFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getTextMark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v0

    return v0
.end method

.method public getTypeEnum()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setFirstColumn(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setFirstColumn(I)V

    return-void
.end method

.method public setFirstRow(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setFirstRow(I)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setLastColumn(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLastColumn(I)V

    return-void
.end method

.method public setLastRow(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLastRow(I)V

    return-void
.end method

.method public setShortFilename(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setShortFilename(Ljava/lang/String;)V

    return-void
.end method

.method public setTextMark(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setTextMark(Ljava/lang/String;)V

    return-void
.end method
