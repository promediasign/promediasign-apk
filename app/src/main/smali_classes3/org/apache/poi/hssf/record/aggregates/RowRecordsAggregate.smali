.class public final Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# instance fields
.field private _firstrow:I

.field private _lastrow:I

.field private _rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

.field private final _rowRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/RowRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

.field private final _unknownRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final _valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;->createEmpty()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V
    .locals 3

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x51

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x208

    if-eq v1, v2, :cond_4

    instance-of v1, v0, Lorg/apache/poi/hssf/record/UnknownRecord;

    if-eqz v1, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    check-cast v0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->addMultipleBlanks(Lorg/apache/poi/hssf/record/MulBlankRecord;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    check-cast v0, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v1, v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->construct(Lorg/apache/poi/hssf/record/CellValueRecordInterface;Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected record type ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SharedValueManager must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addUnknownRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createRow(I)Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    return-object v0
.end method

.method private getEndRowNumberForBlock(I)I
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    new-array v2, v2, [Lorg/apache/poi/hssf/record/RowRecord;

    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [Lorg/apache/poi/hssf/record/RowRecord;

    .line 46
    .line 47
    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 48
    .line 49
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 50
    .line 51
    aget-object v0, v1, v0

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p1

    .line 58
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    const-string v1, "Did not find end row for block "

    .line 61
    .line 62
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method private getRowBlockSize(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowCountForBlock(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private getStartRowNumberForBlock(I)I
    .locals 3

    .line 1
    mul-int/lit8 v0, p1, 0x20

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-array v2, v2, [Lorg/apache/poi/hssf/record/RowRecord;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [Lorg/apache/poi/hssf/record/RowRecord;

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 28
    .line 29
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 30
    .line 31
    aget-object v0, v1, v0

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p1

    .line 38
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v1, "Did not find start row for block "

    .line 41
    .line 42
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method private visitRowRecordsForBlock(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)I
    .locals 5

    mul-int/lit8 p1, p1, 0x20

    add-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p1, v3, 0x1

    if-ge v3, v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v4

    add-int/2addr v2, v4

    invoke-interface {p2, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    move v3, p1

    goto :goto_1

    :cond_1
    return v2
.end method

.method private writeHidden(Lorg/apache/poi/hssf/record/RowRecord;I)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public collapseRow(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findStartOfRowOutlineGroup(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->writeHidden(Lorg/apache/poi/hssf/record/RowRecord;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setColapsed(Z)V

    return-void
.end method

.method public createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getFirstCellNum()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getLastCellNum()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    return-object v0
.end method

.method public createFormula(II)Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    int-to-short p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    new-instance p1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    const/4 p2, 0x0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_sharedValueManager:Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    invoke-direct {p1, v0, p2, v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;-><init>(Lorg/apache/poi/hssf/record/FormulaRecord;Lorg/apache/poi/hssf/record/StringRecord;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    return-object p1
.end method

.method public createIndexRecord(II)Lorg/apache/poi/hssf/record/IndexRecord;
    .locals 5

    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/IndexRecord;->setFirstRow(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/IndexRecord;->setLastRowAdd1(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowBlockCount()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/IndexRecord;->getRecordSizeForBlockCount(I)I

    move-result v2

    add-int/2addr v2, p1

    add-int/2addr v2, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowBlockSize(I)I

    move-result p2

    add-int/2addr v2, p2

    iget-object p2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getStartRowNumberForBlock(I)I

    move-result v3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getEndRowNumberForBlock(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->getRowCellBlockSize(II)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/IndexRecord;->addDbcell(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowCountForBlock(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public expandRow(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->isRowGroupCollapsed(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findStartOfRowOutlineGroup(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findEndOfRowOutlineGroup(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->isRowGroupHiddenByParent(I)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :goto_0
    if-gt v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->isRowGroupCollapsed(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/RowRecord;->setColapsed(Z)V

    return-void
.end method

.method public findEndOfRowOutlineGroup(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getLastRowNum()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public findStartOfRowOutlineGroup(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    if-ge v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getCellValueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    return v0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/RowRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    return v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/record/RowRecord;
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lorg/apache/poi/hssf/record/RowRecord;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v2, "The row number must be between 0 and "

    .line 27
    .line 28
    const-string v3, ", but had: "

    .line 29
    .line 30
    invoke-static {v2, v0, v3, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public getRowBlockCount()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getRowCountForBlock(I)I
    .locals 2

    mul-int/lit8 p1, p1, 0x20

    add-int/lit8 v0, p1, 0x1f

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    return-void
.end method

.method public insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_firstrow:I

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    if-gt v0, v1, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_lastrow:I

    :cond_3
    return-void
.end method

.method public isRowGroupCollapsed(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findEndOfRowOutlineGroup(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getColapsed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRowGroupHiddenByParent(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findEndOfRowOutlineGroup(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->findStartOfRowOutlineGroup(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-le v1, v2, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method public removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    return-void
.end method

.method public removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->removeAllCellsValuesForRow(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lorg/apache/poi/hssf/record/RowRecord;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    if-ne p1, v2, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecordValues:[Lorg/apache/poi/hssf/record/RowRecord;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_rowRecords:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    const-string v0, "Attempt to remove row that does not belong to this sheet"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string v1, "Invalid row index ("

    .line 46
    .line 47
    const-string v2, ")"

    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 10

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;-><init>(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRowBlockCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-direct {p0, v3, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->visitRowRecordsForBlock(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)I

    move-result v4

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getStartRowNumberForBlock(I)I

    move-result v5

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getEndRowNumberForBlock(I)I

    move-result v6

    new-instance v7, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;

    invoke-direct {v7}, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;-><init>()V

    add-int/lit8 v8, v4, -0x14

    :goto_1
    if-gt v5, v6, :cond_1

    iget-object v9, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v9, v5}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->rowHasCells(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->setPosition(I)V

    iget-object v9, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_valuesAgg:Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;

    invoke-virtual {v9, v5, v0}, Lorg/apache/poi/hssf/record/aggregates/ValueRecordsAggregate;->visitCellsForRow(ILorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->getPosition()I

    move-result v9

    add-int/2addr v4, v9

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->addCellOffset(I)V

    move v8, v9

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v4}, Lorg/apache/poi/hssf/record/DBCellRecord$Builder;->build(I)Lorg/apache/poi/hssf/record/DBCellRecord;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->_unknownRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_2

    :cond_3
    return-void
.end method
