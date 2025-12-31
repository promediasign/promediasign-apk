.class public final Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# static fields
.field private static MAX_MERGED_REGIONS:I = 0x403


# instance fields
.field private final _mergedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    return-void
.end method

.method private addMergeCellsRecord(Lorg/apache/poi/hssf/record/MergeCellsRecord;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkIndex(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Specified CF index "

    .line 15
    .line 16
    const-string v2, " is outside the allowable range (0.."

    .line 17
    .line 18
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method


# virtual methods
.method public addArea(IIII)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v1, p1, p3, p2, p4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecords([Lorg/apache/poi/hssf/record/MergeCellsRecord;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->addMergeCellsRecord(Lorg/apache/poi/hssf/record/MergeCellsRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p1
.end method

.method public getNumberOfMergedRegions()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    div-int v2, v0, v1

    rem-int/2addr v0, v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->checkIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    div-int v2, v0, v1

    rem-int v1, v0, v1

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->_mergedRegions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    sget v4, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    mul-int v5, v3, v4

    new-instance v6, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v6, v0, v5, v4}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    invoke-interface {p1, v6}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    sget v3, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->MAX_MERGED_REGIONS:I

    mul-int v2, v2, v3

    new-instance v3, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    invoke-interface {p1, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :cond_2
    return-void
.end method
