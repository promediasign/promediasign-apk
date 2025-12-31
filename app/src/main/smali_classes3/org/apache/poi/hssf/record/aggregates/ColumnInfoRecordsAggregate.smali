.class public final Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;
    }
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ColumnInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_3

    if-nez v2, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No column info records found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private attemptMergeColInfoRecords(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    if-ge p1, v0, :cond_2

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    if-lez p1, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, p1, -0x1

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v2, "colInfoIx "

    .line 57
    .line 58
    const-string v3, " is out of range (0.."

    .line 59
    .line 60
    invoke-static {p1, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ")"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method private static copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method private findColInfoIdx(II)I
    .locals 2

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    if-ltz p2, :cond_3

    .line 4
    .line 5
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p2, v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le v0, p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 35
    return p1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "fromIdx parameter out of range: "

    .line 39
    .line 40
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "column parameter out of range: "

    .line 51
    .line 52
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p2
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    move p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    return-object p1
.end method

.method private insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result p1

    return p1
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-le v0, v2, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method private static mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setXFIndex(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setOutlineLevel(I)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setCollapsed(Z)V

    :cond_4
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    if-ge v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->clone()Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    iget-object v3, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public collapseColumn(I)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setGroupHidden(IIZ)I

    move-result p1

    add-int/lit8 v3, p1, 0x1

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public expandColumn(I)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupCollapsed(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupHiddenByParent(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result p1

    :goto_0
    if-gt v1, v2, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v5

    if-ne p1, v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxOutlineLevel()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getOutlineLevel(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public groupColumnRange(IIZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    if-eqz p3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x7

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    move v8, v1

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    add-int/lit8 p1, p1, 0x1

    move v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public insertColumn(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    move-object v5, v4

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-le v4, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    :goto_3
    if-nez v5, :cond_3

    new-instance v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    :goto_4
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    return-void

    :cond_3
    const/4 v4, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    if-eqz p3, :cond_5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->shortValue()S

    move-result v8

    if-eq v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_6
    if-eqz p4, :cond_6

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_7
    if-eqz p5, :cond_7

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_8

    :cond_7
    const/4 v9, 0x0

    :goto_8
    if-eqz p6, :cond_8

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v10

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v10, v11, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    return-void

    :cond_a
    :goto_9
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, v1, :cond_b

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    if-ne v2, v1, :cond_b

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-eq v2, v1, :cond_d

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    if-ne v2, v1, :cond_c

    goto :goto_a

    :cond_c
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v12

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v13

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v5, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    add-int/2addr v1, v4

    invoke-virtual {v12, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v12, v13}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3, v12}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    goto :goto_c

    :cond_d
    :goto_a
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, v1, :cond_e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    goto :goto_b

    :cond_e
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v5, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    add-int/lit8 v3, v3, 0x1

    :goto_b
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    :goto_c
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-interface {p1, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    if-eqz v1, :cond_2

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Column info records are out of order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method
