.class public Lorg/apache/poi/hssf/usermodel/HSSFComment;
.super Lorg/apache/poi/hssf/usermodel/HSSFTextbox;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Comment;


# instance fields
.field private final _note:Lorg/apache/poi/hssf/record/NoteRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V

    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/NoteRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;)V
    .locals 1

    .line 2
    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-direct {p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->createNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;Lorg/apache/poi/hssf/record/NoteRecord;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFShape;Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)V

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    const p1, 0x8000050

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setFillColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setVisible(Z)V

    const-string p2, ""

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setAuthor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    return-void
.end method

.method private static createNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    return-object v0
.end method

.method private setHidden(Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x3bf

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    const v3, 0x1000002

    or-int/2addr v0, v3

    invoke-direct {p1, v1, v2, v2, v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    const v3, -0x1000003

    and-int/2addr v0, v3

    invoke-direct {p1, v1, v2, v2, v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->addTailRecord(Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-void
.end method

.method public afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/EscherAggregate;->removeTailRecord(Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-void
.end method

.method public cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getTextObjectRecord()Lorg/apache/poi/hssf/record/TextObjectRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    new-instance v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->serialize()[B

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/NoteRecord;

    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-direct {v4, v1, v2, v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/hssf/record/TextObjectRecord;Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-object v4
.end method

.method public createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectType(S)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setLocked(Z)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setPrintable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutofill(Z)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setAutoline(Z)V

    new-instance v2, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>()V

    new-instance v3, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    return-object v0
.end method

.method public createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 6

    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFTextbox;->createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v0

    const/16 v1, -0xff5

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherOptRecord;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    const/16 v2, 0x83

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    new-instance v2, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v3, 0x0

    const v4, 0xa0002

    const/16 v5, 0x3bf

    invoke-direct {v2, v5, v3, v3, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageId()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getAnchor()Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/ss/usermodel/ClientAnchor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor can not be changed in ClientAnchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumn()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getColumn()I

    move-result v0

    return v0
.end method

.method public getNoteRecord()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getString()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public hasPosition()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public isVisible()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NoteRecord;->getFlags()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetBackgroundImage()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    const/16 v1, 0x186

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getOptRecord()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x180

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    return-void
.end method

.method public setAddress(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setColumn(I)V

    return-void
.end method

.method public setAddress(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setColumn(I)V

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setAuthor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 5

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x186

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/16 v1, 0x180

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setPropertyValue(Lorg/apache/poi/ddf/EscherProperty;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    return-void
.end method

.method public setColumn(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setColumn(I)V

    return-void
.end method

.method public setRow(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setRow(I)V

    return-void
.end method

.method public setShapeId(I)V
    .locals 2

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->setShapeId(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->setObjectId(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NoteRecord;->setShapeId(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add more than 65535 shapes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShapeType(I)V
    .locals 2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shape type can not be changed in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisible(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFComment;->_note:Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/NoteRecord;->setFlags(S)V

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setHidden(Z)V

    return-void
.end method
