.class public Lorg/h2/mvstore/db/MVPrimaryIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;
    }
.end annotation


# static fields
.field static final MAX:Lorg/h2/value/ValueLong;

.field static final MIN:Lorg/h2/value/ValueLong;

.field static final ZERO:Lorg/h2/value/ValueLong;


# instance fields
.field private dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final lastKey:Ljava/util/concurrent/atomic/AtomicLong;

.field private mainIndexColumn:I

.field private final mapName:Ljava/lang/String;

.field private final mvTable:Lorg/h2/mvstore/db/MVTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/db/MVPrimaryIndex;->MIN:Lorg/h2/value/ValueLong;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/db/MVPrimaryIndex;->MAX:Lorg/h2/value/ValueLong;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/db/MVPrimaryIndex;->ZERO:Lorg/h2/value/ValueLong;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 10

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    iput-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_DATA"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    array-length p3, p4

    new-array p3, p3, [I

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, p4

    if-ge v0, v3, :cond_0

    aput p5, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/h2/mvstore/db/ValueDataType;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p5, p5}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    new-instance v0, Lorg/h2/mvstore/db/ValueDataType;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v3

    invoke-direct {v0, v3, p1, p3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "table."

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mapName:Ljava/lang/String;

    iget-object p3, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p3, p5}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p3

    invoke-virtual {p3, p1, p4, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {p3}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    invoke-virtual {p2}, Lorg/h2/table/Table;->isPersistData()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->map:Lorg/h2/mvstore/MVMap;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->setVolatile(Z)V

    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    iget-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v1

    :goto_1
    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :goto_0
    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/h2/value/Value;->getLong()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getContainsLargeObject()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_2
    if-ge v1, v0, :cond_4

    .line 49
    .line 50
    invoke-interface {p2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v2, v3, v4}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lorg/h2/value/Value;->isLinkedToTable()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->removeAtCommitStop(Lorg/h2/value/Value;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-eq v2, v3, :cond_3

    .line 74
    .line 75
    invoke-interface {p2, v1, v3}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getLatest(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lorg/h2/value/Value;

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p2, "PRIMARY KEY ON "

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    .line 109
    .line 110
    invoke-virtual {p2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    .line 122
    .line 123
    if-ltz p2, :cond_5

    .line 124
    .line 125
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    .line 126
    .line 127
    array-length v0, v0

    .line 128
    if-ge p2, v0, :cond_5

    .line 129
    .line 130
    const-string p2, "("

    .line 131
    .line 132
    invoke-static {p1, p2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    .line 137
    .line 138
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    .line 139
    .line 140
    aget-object p2, p2, v0

    .line 141
    .line 142
    invoke-virtual {p2}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, ")"

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :cond_5
    const/16 p2, 0x5bd1

    .line 159
    .line 160
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, p0}, Lorg/h2/message/DbException;->setSource(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_6
    :try_start_0
    invoke-interface {p2}, Lorg/h2/result/Row;->getValueList()[Lorg/h2/value/Value;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:Ljava/util/concurrent/atomic/AtomicLong;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    cmp-long p1, v0, v2

    .line 190
    .line 191
    if-lez p1, :cond_7

    .line 192
    .line 193
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->lastKey:Ljava/util/concurrent/atomic/AtomicLong;

    .line 194
    .line 195
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 200
    .line 201
    .line 202
    :cond_7
    return-void

    .line 203
    :catch_0
    move-exception p1

    .line 204
    iget-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    .line 205
    .line 206
    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    sget-object p2, Lorg/h2/mvstore/db/MVPrimaryIndex;->MIN:Lorg/h2/value/ValueLong;

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    if-gez v0, :cond_1

    :goto_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueLong;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_1
    if-nez p3, :cond_3

    sget-object p3, Lorg/h2/mvstore/db/MVPrimaryIndex;->MAX:Lorg/h2/value/ValueLong;

    goto :goto_3

    :cond_3
    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    if-gez v0, :cond_4

    :goto_2
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p3

    goto :goto_3

    :cond_4
    invoke-interface {p3, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    check-cast v0, Lorg/h2/value/ValueLong;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p3, v0

    :goto_3
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    new-instance v1, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->entryIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    return-object v1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/index/Cursor;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    new-instance v1, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-virtual {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->entryIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    return-object v1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    check-cast p2, Lorg/h2/value/Value;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->lastKey()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :goto_1
    check-cast p2, Lorg/h2/value/ValueLong;

    if-nez p2, :cond_1

    new-instance p2, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    return-object p2

    :cond_1
    invoke-virtual {v0, p2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/Value;

    new-instance v1, Lorg/h2/mvstore/DataUtils$MapEntry;

    invoke-direct {v1, p2, v0}, Lorg/h2/mvstore/DataUtils$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;-><init>(Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/engine/Session;Ljava/util/Iterator;Lorg/h2/value/ValueLong;)V

    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVPrimaryIndex$MVStoreCursor;->next()Z

    return-object v1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/BaseIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p3, 0xa

    mul-long p1, p1, p3

    long-to-double p1, p1

    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const p3, 0x15f97

    invoke-static {p3, p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
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

.method public getKey(Lorg/h2/result/SearchRow;Lorg/h2/value/ValueLong;Lorg/h2/value/ValueLong;)Lorg/h2/value/ValueLong;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, p1, :cond_1

    return-object p3

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    check-cast p1, Lorg/h2/value/ValueLong;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMainIndexColumn()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    return v0
.end method

.method public getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            ")",
            "Lorg/h2/mvstore/db/TransactionStore$TransactionMap<",
            "Lorg/h2/value/Value;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->getInstance(Lorg/h2/mvstore/db/TransactionStore$Transaction;J)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    return-object p1
.end method

.method public getMapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tableScan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/h2/value/ValueArray;

    invoke-virtual {v0}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/h2/result/SearchRow;->setKey(J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x1601f

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountMax()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->dataMap:Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->sizeAsLongMax()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x15f97

    invoke-static {v2, v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lorg/h2/mvstore/db/MVTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    return-object v0
.end method

.method public bridge synthetic getTable()Lorg/h2/table/Table;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getTable()Lorg/h2/mvstore/db/MVTable;

    move-result-object v0

    return-object v0
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRowIdIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v1, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    :cond_0
    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->removeAtCommit(Lorg/h2/value/Value;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    :try_start_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x16000

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/db/MVTable;->convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setMainIndexColumn(I)V
    .locals 0

    iput p1, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mainIndexColumn:I

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMap(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVPrimaryIndex;->mvTable:Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTable;->getContainsLargeObject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$TransactionMap;->clear()V

    return-void
.end method
