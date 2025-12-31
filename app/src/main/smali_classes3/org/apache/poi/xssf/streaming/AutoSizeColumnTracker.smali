.class Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final defaultCharWidth:I

.field private final maxColumnWidths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;",
            ">;"
        }
    .end annotation
.end field

.field private trackAllColumns:Z

.field private final untrackedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/util/SheetUtil;->getDefaultCharWidth(Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:I

    return-void
.end method

.method private implicitlyTrackColumn(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private implicitlyTrackColumnsInRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumn(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V
    .locals 5

    iget v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:I

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v0

    iget v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->defaultCharWidth:I

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Lorg/apache/poi/ss/util/SheetUtil;->getCellWidth(Lorg/apache/poi/ss/usermodel/Cell;ILorg/apache/poi/ss/usermodel/DataFormatter;Z)D

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->setMaxColumnWidths(DD)V

    return-void
.end method


# virtual methods
.method public getBestFitColumnWidth(IZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    .line 14
    .line 15
    const-string v1, ". Either explicitly track the column or track all columns."

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumn(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "Column was explicitly untracked after trackAllColumns() was called."

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v2, "Cannot get best fit column width on explicitly untracked column "

    .line 36
    .line 37
    invoke-static {p1, v2, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "Column was never explicitly tracked and isAllColumnsTracked() is false (trackAllColumns() was never called or untrackAllColumns() was called after trackAllColumns() was called)."

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v2, "Cannot get best fit column width on untracked column "

    .line 55
    .line 56
    invoke-static {p1, v2, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;->getMaxColumnWidth(Z)D

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    .line 81
    .line 82
    mul-double p1, p1, v0

    .line 83
    .line 84
    double-to-int p1, p1

    .line 85
    return p1
.end method

.method public getTrackedColumns()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public isAllColumnsTracked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    return v0
.end method

.method public isColumnTracked(I)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public trackAllColumns()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public trackColumn(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public trackColumns(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public untrackAllColumns()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns:Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public untrackColumn(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public untrackColumns(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackedColumns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public updateColumnWidths(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->implicitlyTrackColumnsInRow(Lorg/apache/poi/ss/usermodel/Row;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getPhysicalNumberOfCells()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->maxColumnWidths:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidth(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker$ColumnWidthPair;)V

    goto :goto_1

    :cond_3
    return-void
.end method
