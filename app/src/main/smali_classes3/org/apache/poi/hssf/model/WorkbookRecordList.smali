.class public final Lorg/apache/poi/hssf/model/WorkbookRecordList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backuppos:I

.field private bspos:I

.field private externsheetPos:I

.field private fontpos:I

.field private namepos:I

.field private palettepos:I

.field private protpos:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private supbookpos:I

.field private tabpos:I

.field private xfpos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return-void
.end method

.method private updateRecordPos(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getProtpos()I

    move-result v1

    if-lt v1, p1, :cond_1

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v1

    if-lt v1, p1, :cond_2

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v1

    if-lt v1, p1, :cond_3

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v1

    if-lt v1, p1, :cond_4

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v1

    if-lt v1, p1, :cond_5

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v1

    if-lt v1, p1, :cond_6

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getNamepos()I

    move-result v1

    if-lt v1, p1, :cond_7

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setNamepos(I)V

    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getSupbookpos()I

    move-result v1

    if-lt v1, p1, :cond_8

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setSupbookpos(I)V

    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v1

    if-eq v1, v0, :cond_9

    if-lt v1, p1, :cond_9

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    :cond_9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getExternsheetPos()I

    move-result v0

    if-lt v0, p1, :cond_a

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setExternsheetPos(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method public add(ILorg/apache/poi/hssf/record/Record;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->updateRecordPos(IZ)V

    return-void
.end method

.method public get(I)Lorg/apache/poi/hssf/record/Record;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/Record;

    return-object p1
.end method

.method public getBackuppos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    return v0
.end method

.method public getBspos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    return v0
.end method

.method public getExternsheetPos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    return v0
.end method

.method public getFontpos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    return v0
.end method

.method public getNamepos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    return v0
.end method

.method public getPalettepos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return v0
.end method

.method public getProtpos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    return-object v0
.end method

.method public getSupbookpos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    return v0
.end method

.method public getTabpos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    return v0
.end method

.method public getXfpos()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    return v0
.end method

.method public remove(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->updateRecordPos(IZ)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setBackuppos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    return-void
.end method

.method public setBspos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    return-void
.end method

.method public setExternsheetPos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    return-void
.end method

.method public setFontpos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    return-void
.end method

.method public setNamepos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    return-void
.end method

.method public setPalettepos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return-void
.end method

.method public setProtpos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    return-void
.end method

.method public setSupbookpos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    return-void
.end method

.method public setTabpos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    return-void
.end method

.method public setXfpos(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
