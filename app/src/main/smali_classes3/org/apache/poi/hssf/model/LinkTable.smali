.class final Lorg/apache/poi/hssf/model/LinkTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;,
        Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;
    }
.end annotation


# instance fields
.field private final _definedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/NameRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

.field private _externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

.field private final _recordCount:I

.field private final _workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;


# direct methods
.method public constructor <init>(ILorg/apache/poi/hssf/model/WorkbookRecordList;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(I)V

    const/4 p1, 0x1

    new-array v1, p1, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    const/16 v2, 0x8c

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v2, p1

    invoke-virtual {p2, v2, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p2, v2, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "CountryRecord not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;ILorg/apache/poi/hssf/model/WorkbookRecordList;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I",
            "Lorg/apache/poi/hssf/model/WorkbookRecordList;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/record/NameCommentRecord;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    new-instance p3, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p3}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/SupBookRecord;

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v1, p3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-eq v0, v2, :cond_2

    :cond_1
    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lorg/apache/poi/hssf/model/LinkTable;->readExtSheetRecord(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    :goto_2
    invoke-virtual {p3}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/hssf/record/NameRecord;

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/NameRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-class v1, Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-ne v0, v1, :cond_4

    invoke-virtual {p3}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lorg/apache/poi/hssf/model/RecordStream;->getCountRead()I

    move-result p3

    iput p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    iget-object p4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {p4}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object p4

    add-int/2addr p3, p2

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private findFirstRecordLocBySid(S)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v0

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

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findRefIndexFromExtBookIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->findRefIndexFromExtBookIndex(I)I

    move-result p1

    return p1
.end method

.method private getExternalWorkbookIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    aget-object v1, p0, v0

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v0, "External workbook does not contain sheet \'"

    .line 20
    .line 21
    const-string v1, "\'"

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method private static isDuplicatedNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->isSameSheetNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSameSheetNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readExtSheetRecord(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    if-ne v1, v2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    return-object p0

    :cond_1
    new-array p0, v1, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->combine([Lorg/apache/poi/hssf/record/ExternSheetRecord;)Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an EXTERNSHEET record but got ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addName(Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1ae

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    const/16 v0, 0x8c

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    return-void
.end method

.method public addNameXPtg(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/SupBookRecord;->isAddInFunctions()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v3, v3, v2

    goto :goto_1

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x2

    if-nez v3, :cond_2

    new-instance v3, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>()V

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/model/LinkTable;->extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I

    move-result v2

    const/16 v5, 0x17

    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v6, v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6, v4, v4}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    :cond_2
    new-instance v5, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>()V

    invoke-virtual {v5, p1}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->setText(Ljava/lang/String;)V

    new-array p1, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    sget-object v6, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    aput-object v6, p1, v1

    invoke-virtual {v5, p1}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->addExternalName(Lorg/apache/poi/hssf/record/ExternalNameRecord;)I

    move-result p1

    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/Record;

    instance-of v8, v7, Lorg/apache/poi/hssf/record/SupBookRecord;

    if-eqz v8, :cond_3

    check-cast v7, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/SupBookRecord;->isAddInFunctions()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNumberOfNames()I

    move-result v0

    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/2addr v1, v0

    invoke-virtual {v3, v1, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, v2, v4, v4}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v0

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(II)V

    return-object v1
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p2}, Lorg/apache/poi/hssf/record/SupBookRecord;->setURL(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public checkExternSheet(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(II)I

    move-result p1

    return p1
.end method

.method public checkExternSheet(II)I
    .locals 3

    .line 2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->isInternalReferences()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v1, v0, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v1

    if-ltz v1, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v1, v0, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find \'internal references\' EXTERNALBOOK"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExternalBookAndSheetName(I)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getLastSheetIndexFromRefIndex(I)I

    move-result p1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    :cond_2
    if-ne v1, p1, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v3, v2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalWorkbookIndex(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 9
    .line 10
    aget-object p1, p1, v0

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, p3}, Lorg/apache/poi/hssf/model/LinkTable;->getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 33
    .line 34
    invoke-virtual {p3, v0, p2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-gez p3, :cond_0

    .line 39
    .line 40
    iget-object p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 41
    .line 42
    invoke-virtual {p3, v0, p2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    :cond_0
    return p3

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    const-string p3, "No external workbook with name \'"

    .line 50
    .line 51
    const-string v0, "\'"

    .line 52
    .line 53
    invoke-static {p3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2
.end method

.method public getFirstInternalSheetIndexForExtIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfRefs()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getLastInternalSheetIndexForExtIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfRefs()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getLastSheetIndexFromRefIndex(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/NameRecord;

    return-object p1
.end method

.method public getNameXPtg(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getIndexOfName(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->findRefIndexFromExtBookIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-ne v2, p2, :cond_2

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {p1, v2, v1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(II)V

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumNames()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    return v0
.end method

.method public getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalWorkbookIndex(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v2, v0, [Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v4, v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p2, v4}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetName(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    aput-object v5, v2, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p2, "\u0000"

    .line 29
    .line 30
    invoke-static {p2, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 35
    .line 36
    invoke-direct {p2, p1, v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/model/LinkTable;->extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/16 v2, 0x17

    .line 44
    .line 45
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 52
    .line 53
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v1, v2, p2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    if-ge v3, v0, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 69
    .line 70
    invoke-virtual {p2, p1, v3, v3}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return p1
.end method

.method public nameAlreadyExists(Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    if-eq v2, p1, :cond_0

    invoke-static {p1, v2}, Lorg/apache/poi/hssf/model/LinkTable;->isDuplicatedNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeBuiltinRecord(BI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeName(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeSheet(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->removeSheet(I)V

    return-void
.end method

.method public resolveNameXIx(II)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNameIx(I)I

    move-result p1

    return p1
.end method

.method public resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq p1, v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 17
    .line 18
    aget-object v1, v1, v0

    .line 19
    .line 20
    invoke-static {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->access$000(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v1, v1

    .line 25
    if-le v1, p2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 28
    .line 29
    aget-object p1, p1, v0

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNameText(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_0
    const/4 v1, -0x2

    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .line 51
    .line 52
    if-lez p2, :cond_1

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    invoke-virtual {p3, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "!"

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 81
    .line 82
    const-string p2, "Ext Book Index relative but beyond the supported length, was "

    .line 83
    .line 84
    const-string p3, " but maximum is "

    .line 85
    .line 86
    invoke-static {v0, p2, p3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget-object p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 91
    .line 92
    array-length p3, p3

    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    const-string p2, "Referenced sheet could not be found"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
