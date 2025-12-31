.class final Lorg/apache/poi/hssf/model/RecordOrderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findSheetInsertPos(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static findDataValidationTableInsertPos(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v1, :cond_4

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z

    move-result v3

    const-string v4, "Unexpected ("

    if-eqz v3, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTSubsequentRecord(S)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") found after ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTSubsequentRecord(S)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") while looking for DV Table insert pos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Last sheet record should be EOFRecord"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findInsertPosForNewCondFormatTable(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x41

    if-eq v1, v2, :cond_2

    const/16 v2, 0x99

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_2

    const/16 v2, 0xef

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23e

    if-eq v1, v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Did not find Window2 record"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findInsertPosForNewMergedRecordTable(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/hssf/record/Record;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x41

    if-eq v1, v2, :cond_1

    const/16 v2, 0x99

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x23e

    if-eq v1, v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Did not find Window2 record"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findSheetInsertPos(Ljava/util/List;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findDataValidationTableInsertPos(Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findInsertPosForNewMergedRecordTable(Ljava/util/List;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findInsertPosForNewCondFormatTable(Ljava/util/List;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_2
    const-class v0, Lorg/apache/poi/hssf/record/GutsRecord;

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getGutsRecordInsertPos(Ljava/util/List;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_3
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 38
    .line 39
    if-ne p1, v0, :cond_4

    .line 40
    .line 41
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getPageBreakRecordInsertPos(Ljava/util/List;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_4
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    .line 47
    .line 48
    if-ne p1, v0, :cond_5

    .line 49
    .line 50
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getWorksheetProtectionBlockInsertPos(Ljava/util/List;)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Unexpected record class ("

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, ")"

    .line 65
    .line 66
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method private static getDimensionsIndex(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/hssf/record/DimensionsRecord;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DimensionsRecord not found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getGutsRecordInsertPos(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isGutsPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Did not find insert point for GUTS"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getPageBreakRecordInsertPos(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isPageBreakPriorRecord(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Did not find insert point for GUTS"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWorksheetProtectionBlockInsertPos(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isProtectionSubsequentRecord(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "did not find insert pos for protection block"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isDVTPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_1

    const/16 v0, 0x99

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xef

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1ba

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static isDVTSubsequentRecord(S)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x862

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8c8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x867

    if-eq p0, v0, :cond_0

    const/16 v0, 0x868

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isEndOfRowBlock(I)Z
    .locals 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23e

    if-eq p0, v0, :cond_0

    const/16 v0, 0xec

    if-eq p0, v0, :cond_0

    const/16 v0, 0xed

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Found EOFRecord before WindowTwoRecord was encountered"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isGutsPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isPageBreakPriorRecord(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x225

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x81

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isProtectionSubsequentRecord(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result p0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x90

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRowBlockRecord(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201

    if-eq p0, v0, :cond_0

    const/16 v0, 0x208

    if-eq p0, v0, :cond_0

    const/16 v0, 0x221

    if-eq p0, v0, :cond_0

    const/16 v0, 0x236

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4bc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x203
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
