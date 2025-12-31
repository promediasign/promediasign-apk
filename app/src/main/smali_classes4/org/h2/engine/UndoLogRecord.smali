.class public Lorg/h2/engine/UndoLogRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DELETE:S = 0x1s

.field public static final INSERT:S = 0x0s

.field private static final IN_MEMORY:I = 0x0

.field private static final IN_MEMORY_INVALID:I = 0x2

.field private static final STORED:I = 0x1


# instance fields
.field private filePos:I

.field private operation:S

.field private row:Lorg/h2/result/Row;

.field private state:S

.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iput-object p3, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    iput-short p2, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    const/4 p1, 0x0

    iput-short p1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    return-void
.end method

.method private load(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-virtual {p1}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/h2/engine/UndoLog;->getTable(I)Lorg/h2/table/Table;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    new-array v5, v0, [Lorg/h2/value/Value;

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/engine/UndoLogRecord;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v5, v0}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {p1, v3, v4}, Lorg/h2/result/SearchRow;->setKey(J)V

    iget-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {p1, v2}, Lorg/h2/result/Row;->setDeleted(Z)V

    iget-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {p1, p2}, Lorg/h2/result/Row;->setSessionId(I)V

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    return-void
.end method

.method public static loadFromBuffer(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)Lorg/h2/engine/UndoLogRecord;
    .locals 3

    new-instance v0, Lorg/h2/engine/UndoLogRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/h2/engine/UndoLogRecord;-><init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result v1

    invoke-virtual {p0}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v0, p0, p1}, Lorg/h2/engine/UndoLogRecord;->load(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/h2/store/Data;->setPos(I)V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V
    .locals 4

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-short v2, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {v2}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    invoke-virtual {p2, v2}, Lorg/h2/engine/UndoLog;->getTableId(Lorg/h2/table/Table;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object p2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/h2/store/Data;->writeLong(J)V

    iget-object p2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object p2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->writeInt(I)V

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-interface {v2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual {p1, v2}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/h2/store/Data;->fillAligned()V

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/h2/store/Data;->setInt(II)V

    return-void
.end method

.method public canStore()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getUniqueIndex()Lorg/h2/index/Index;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public commit()V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    iget-short v1, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    iget-object v2, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    invoke-virtual {v0, v1, v2}, Lorg/h2/table/Table;->commit(SLorg/h2/result/Row;)V

    return-void
.end method

.method public getFilePos()J
    .locals 2

    iget v0, p0, Lorg/h2/engine/UndoLogRecord;->filePos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRow()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public invalidatePos()V
    .locals 1

    iget-short v0, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    :cond_0
    return-void
.end method

.method public isStored()Z
    .locals 2

    iget-short v0, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public load(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V
    .locals 3

    .line 2
    iget v0, p0, Lorg/h2/engine/UndoLogRecord;->filePos:I

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Lorg/h2/engine/UndoLog;->seek(J)V

    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lorg/h2/store/FileStore;->readFully([BII)V

    invoke-virtual {p1}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Lorg/h2/store/Data;->checkCapacity(I)V

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1, v2, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    :cond_0
    iget-short p2, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-direct {p0, p1, p3}, Lorg/h2/engine/UndoLogRecord;->load(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_1

    iget-short p1, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    if-eq p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "operation="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p3, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " op="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method public save(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V
    .locals 4

    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    invoke-virtual {p0, p1, p3}, Lorg/h2/engine/UndoLogRecord;->append(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    invoke-virtual {p2}, Lorg/h2/store/FileStore;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    div-long/2addr v0, v2

    long-to-int p3, v0

    iput p3, p0, Lorg/h2/engine/UndoLogRecord;->filePos:I

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-virtual {p2, p3, v0, p1}, Lorg/h2/store/FileStore;->write([BII)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    const/4 p1, 0x1

    iput-short p1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    return-void
.end method

.method public undo(Lorg/h2/engine/Session;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-short v1, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "op="

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-short v0, p0, Lorg/h2/engine/UndoLogRecord;->operation:S

    .line 21
    .line 22
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    .line 34
    .line 35
    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 41
    .line 42
    invoke-interface {v0}, Lorg/h2/result/Row;->commit()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/16 v1, 0x5bd1

    .line 66
    .line 67
    if-ne p1, v1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    throw v0

    .line 71
    :cond_2
    iget-short v1, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    const/4 v5, 0x0

    .line 75
    if-ne v1, v4, :cond_3

    .line 76
    .line 77
    iput-short v5, p0, Lorg/h2/engine/UndoLogRecord;->state:S

    .line 78
    .line 79
    :cond_3
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 86
    .line 87
    invoke-interface {v0}, Lorg/h2/result/Row;->isDeleted()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 95
    .line 96
    invoke-interface {v0, v5}, Lorg/h2/result/Row;->setDeleted(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    .line 100
    .line 101
    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 102
    .line 103
    invoke-virtual {v0, p1, v1}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lorg/h2/engine/UndoLogRecord;->table:Lorg/h2/table/Table;

    .line 107
    .line 108
    iget-object v1, p0, Lorg/h2/engine/UndoLogRecord;->row:Lorg/h2/result/Row;

    .line 109
    .line 110
    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/h2/table/Table;->fireAfterRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;Z)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const v1, 0x16000

    .line 130
    .line 131
    .line 132
    if-ne p1, v1, :cond_5

    .line 133
    .line 134
    :goto_0
    return-void

    .line 135
    :cond_5
    throw v0
.end method
