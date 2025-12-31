.class public Lorg/h2/engine/UndoLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final database:Lorg/h2/engine/Database;

.field private file:Lorg/h2/store/FileStore;

.field private final largeTransactions:Z

.field private memoryUndo:I

.field private final records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/UndoLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private rowBuff:Lorg/h2/store/Data;

.field private storedEntries:I

.field private final storedEntriesPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->largeTransactions:Z

    iput-boolean p1, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    return-void
.end method

.method private saveIfPossible(Lorg/h2/engine/UndoLogRecord;Lorg/h2/store/Data;)V
    .locals 1

    invoke-virtual {p1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/UndoLogRecord;->canStore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, p2, v0, p0}, Lorg/h2/engine/UndoLogRecord;->save(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V

    iget p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/UndoLogRecord;)V
    .locals 7

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    const-wide/16 v1, 0x30

    const-string v3, "rw"

    const/16 v4, 0x1000

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMaxMemoryUndo()I

    move-result v0

    if-le p1, v0, :cond_8

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->createTempFile()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v3, v5}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v5}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v1, v2}, Lorg/h2/store/FileStore;->setLength(J)V

    :cond_0
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-static {p1, v4}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UndoLogRecord;

    invoke-virtual {p1, v4}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual {v1, p1, p0}, Lorg/h2/engine/UndoLogRecord;->append(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)V

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v1

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v2}, Lorg/h2/store/FileStore;->getFilePointer()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Lorg/h2/store/FileStore;->write([BII)V

    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iput v5, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/FileStore;->autoDelete()V

    return-void

    :cond_4
    invoke-virtual {p1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    :cond_5
    iget v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v6, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMaxMemoryUndo()I

    move-result v6

    if-le v0, v6, :cond_8

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    if-nez v0, :cond_6

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->createTempFile()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v3, v5}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v5}, Lorg/h2/store/FileStore;->setCheckedWriting(Z)V

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-static {p1, v4}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    :goto_1
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/UndoLogRecord;

    invoke-direct {p0, v0, p1}, Lorg/h2/engine/UndoLog;->saveIfPossible(Lorg/h2/engine/UndoLogRecord;Lorg/h2/store/Data;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    invoke-direct {p0, p1, v0}, Lorg/h2/engine/UndoLog;->saveIfPossible(Lorg/h2/engine/UndoLogRecord;Lorg/h2/store/Data;)V

    :cond_7
    iget-object p1, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/FileStore;->autoDelete()V

    :cond_8
    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeAndDeleteSilently()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    iput-object v0, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    :cond_0
    return-void
.end method

.method public getLast()Lorg/h2/engine/UndoLogRecord;
    .locals 8

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-boolean v1, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-gez v0, :cond_1

    iget v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->storedEntriesPos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-int v1, v0

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-static {v0, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object v0

    iget-object v5, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v5, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v5, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6, v2, v1}, Lorg/h2/store/FileStore;->readFully([BII)V

    :goto_0
    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v5

    if-ge v5, v1, :cond_0

    invoke-static {v0, p0}, Lorg/h2/engine/UndoLogRecord;->loadFromBuffer(Lorg/h2/store/Data;Lorg/h2/engine/UndoLog;)Lorg/h2/engine/UndoLogRecord;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v3, v4}, Lorg/h2/store/FileStore;->setLength(J)V

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_2
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UndoLogRecord;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/h2/engine/UndoLog;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMaxMemoryUndo()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v3, v0, :cond_4

    iget-object v5, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/engine/UndoLogRecord;

    invoke-virtual {v5}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/h2/engine/UndoLog;->rowBuff:Lorg/h2/store/Data;

    iget-object v7, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v5, v6, v7, p0}, Lorg/h2/engine/UndoLogRecord;->load(Lorg/h2/store/Data;Lorg/h2/store/FileStore;Lorg/h2/engine/UndoLog;)V

    iget v6, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    if-nez v4, :cond_3

    move-object v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/UndoLogRecord;

    invoke-virtual {v3}, Lorg/h2/engine/UndoLogRecord;->invalidatePos()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lorg/h2/engine/UndoLogRecord;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/h2/engine/UndoLog;->seek(J)V

    :cond_6
    return-object v1
.end method

.method public getTable(I)Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/Table;

    return-object p1
.end method

.method public getTableId(Lorg/h2/table/Table;)I
    .locals 3

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lorg/h2/engine/UndoLog;->tables:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public removeLast(Z)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UndoLogRecord;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLogRecord;->isStored()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x400

    if-le v0, p1, :cond_1

    and-int/lit16 p1, v0, 0x3ff

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_1
    return-void
.end method

.method public seek(J)V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/UndoLog;->file:Lorg/h2/store/FileStore;

    const-wide/16 v1, 0x10

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/FileStore;->seek(J)V

    return-void
.end method

.method public size()I
    .locals 2

    iget-boolean v0, p0, Lorg/h2/engine/UndoLog;->largeTransactions:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/engine/UndoLog;->storedEntries:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/engine/UndoLog;->memoryUndo:I

    iget-object v1, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/UndoLog;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
