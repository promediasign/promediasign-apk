.class public Lorg/h2/table/RangeTable;
.super Lorg/h2/table/Table;
.source "SourceFile"


# static fields
.field public static final ALIAS:Ljava/lang/String; = "GENERATE_SERIES"

.field public static final NAME:Ljava/lang/String; = "SYSTEM_RANGE"


# instance fields
.field private max:Lorg/h2/expression/Expression;

.field private min:Lorg/h2/expression/Expression;

.field private optimized:Z

.field private step:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    iput-object p4, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    return-void
.end method

.method public constructor <init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V
    .locals 6

    .line 2
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v3, "SYSTEM_RANGE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    new-array p1, p1, [Lorg/h2/table/Column;

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    new-array p4, p4, [Lorg/h2/table/Column;

    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "X"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v0, p4, p1

    move-object p1, p4

    :goto_0
    iput-object p2, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {p0, p1}, Lorg/h2/table/Table;->setColumns([Lorg/h2/table/Column;)V

    return-void
.end method

.method private optimize(Lorg/h2/engine/Session;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/RangeTable;->optimized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/table/RangeTable;->optimized:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "SYSTEM_RANGE"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMax(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMin(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getMax(Lorg/h2/engine/Session;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getMin(Lorg/h2/engine/Session;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SYSTEM_RANGE("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/h2/table/RangeTable;->min:Lorg/h2/expression/Expression;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/h2/table/RangeTable;->max:Lorg/h2/expression/Expression;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_0
    const-string v1, ")"

    .line 57
    .line 58
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/h2/table/RangeTable;->getStep(Lorg/h2/engine/Session;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lorg/h2/index/RangeIndex;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/h2/index/RangeIndex;-><init>(Lorg/h2/table/RangeTable;[Lorg/h2/table/IndexColumn;)V

    return-object p1

    :cond_0
    const p1, 0x1601e

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getStep(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/RangeTable;->optimize(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/RangeTable;->step:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTableType()Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->SYSTEM_TABLE:Lorg/h2/table/TableType;

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "SYSTEM_RANGE"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
