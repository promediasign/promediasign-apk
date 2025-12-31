.class public final Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
.super Lorg/apache/poi/hssf/usermodel/HSSFPicture;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ObjectData;


# instance fields
.field private final _root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;->getPictureIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    return-void
.end method

.method public afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "HSSFObjectData cannot be created from scratch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 4

    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->serialize()[B

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ObjRecord;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    return-object v2
.end method

.method public createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSFObjectData cannot be created from scratch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSFObjectData cannot be created from scratch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFShape;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object data does not contain a reference to an embedded object OLE2 directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamId()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "MBD"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v2, "Stream "

    .line 47
    .line 48
    const-string v3, " was not an OLE2 directory"

    .line 49
    .line 50
    invoke-static {v2, v0, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method

.method public getOLE2ClassName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getOLEClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectData()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getObjectData()[B

    move-result-object v0

    return-object v0
.end method

.method public hasDirectoryEntry()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
