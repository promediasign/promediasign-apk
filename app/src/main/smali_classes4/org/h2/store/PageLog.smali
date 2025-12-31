.class public Lorg/h2/store/PageLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD:I = 0x5

.field public static final CHECKPOINT:I = 0x8

.field public static final COMMIT:I = 0x2

.field private static final COMPRESS_UNDO:Z = true

.field public static final FREE_LOG:I = 0x9

.field public static final NOOP:I = 0x0

.field public static final PREPARE_COMMIT:I = 0x3

.field static final RECOVERY_STAGE_ALLOCATE:I = 0x1

.field static final RECOVERY_STAGE_REDO:I = 0x2

.field static final RECOVERY_STAGE_UNDO:I = 0x0

.field public static final REMOVE:I = 0x6

.field public static final ROLLBACK:I = 0x4

.field public static final TRUNCATE:I = 0x7

.field public static final UNDO:I = 0x1


# instance fields
.field private final compress:Lorg/h2/compress/CompressLZF;

.field private final compressBuffer:[B

.field private final dataBuffer:Lorg/h2/store/Data;

.field private firstDataPage:I

.field private firstSectionId:I

.field private firstTrunkPage:I

.field private freeing:Z

.field private logKey:I

.field private logPos:I

.field private logSectionId:I

.field private final logSectionPageMap:Lorg/h2/util/IntIntHashMap;

.field private pageOut:Lorg/h2/store/PageOutputStream;

.field private sessionStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/store/SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lorg/h2/store/PageStore;

.field private final trace:Lorg/h2/message/Trace;

.field private undo:Lorg/h2/util/BitField;

.field private final undoAll:Lorg/h2/util/BitField;

.field private usedLogPages:Lorg/h2/util/BitField;

.field private writeBuffer:Lorg/h2/store/Data;


# direct methods
.method public constructor <init>(Lorg/h2/store/PageStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    new-instance v0, Lorg/h2/util/IntIntHashMap;

    invoke-direct {v0}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->dataBuffer:Lorg/h2/store/Data;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->compress:Lorg/h2/compress/CompressLZF;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/h2/store/PageLog;->compressBuffer:[B

    return-void
.end method

.method private flushOut()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->flush()V

    return-void
.end method

.method private freeLogPages(Lorg/h2/util/IntArray;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log frees "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/h2/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Lorg/h2/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {p1}, Lorg/h2/util/IntArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/h2/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/h2/store/Data;->writeVarInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void
.end method

.method private getBuffer()Lorg/h2/store/Data;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    return-object v0
.end method

.method private getOrAddSessionState(I)Lorg/h2/store/SessionState;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/SessionState;

    if-nez v1, :cond_0

    new-instance v1, Lorg/h2/store/SessionState;

    invoke-direct {v1}, Lorg/h2/store/SessionState;-><init>()V

    iget-object v2, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, v1, Lorg/h2/store/SessionState;->sessionId:I

    :cond_0
    return-object v1
.end method

.method private isSessionCommitted(III)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/store/SessionState;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/h2/store/SessionState;->isCommitted(II)Z

    move-result p1

    return p1
.end method

.method public static readRow(Lorg/h2/result/RowFactory;Lorg/h2/store/DataReader;Lorg/h2/store/Data;)Lorg/h2/result/Row;
    .locals 5

    invoke-virtual {p1}, Lorg/h2/store/DataReader;->readVarLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v2

    invoke-virtual {p2}, Lorg/h2/store/Data;->reset()V

    invoke-virtual {p2, v2}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lorg/h2/store/DataReader;->readFully([BI)V

    invoke-virtual {p2}, Lorg/h2/store/Data;->readVarInt()I

    move-result p1

    new-array v2, p1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    invoke-virtual {p2}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, v2, p1}, Lorg/h2/result/RowFactory;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    return-object p0
.end method

.method private removeUntil(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log.removeUntil "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    move v0, p1

    :goto_0
    iget-object v1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/store/PageStreamTrunk;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/h2/store/PageStreamTrunk;->getLogKey()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageLog;->logKey:I

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {p1, p2}, Lorg/h2/store/PageStreamTrunk;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/store/PageStreamTrunk;->getNextTrunk()I

    move-result v2

    new-instance v3, Lorg/h2/util/IntArray;

    invoke-direct {v3}, Lorg/h2/util/IntArray;-><init>()V

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/h2/util/IntArray;->add(I)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/h2/store/PageStreamTrunk;->getPageData(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-direct {p0, v3}, Lorg/h2/store/PageLog;->freeLogPages(Lorg/h2/util/IntArray;)V

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageOutputStream;->free(Lorg/h2/store/PageStreamTrunk;)V

    move v0, v1

    move p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Lorg/h2/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "log.removeUntil not found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " last "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private setLastCommitForSession(III)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/store/PageLog;->getOrAddSessionState(I)Lorg/h2/store/SessionState;

    move-result-object p1

    iput p2, p1, Lorg/h2/store/SessionState;->lastCommitLog:I

    iput p3, p1, Lorg/h2/store/SessionState;->lastCommitPos:I

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    return-void
.end method

.method private setPrepareCommit(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/h2/store/PageLog;->getOrAddSessionState(I)Lorg/h2/store/SessionState;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/h2/store/PageStoreInDoubtTransaction;

    iget-object v2, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/h2/store/PageStoreInDoubtTransaction;-><init>(Lorg/h2/store/PageStore;IILjava/lang/String;)V

    move-object p1, v1

    :goto_0
    iput-object p1, v0, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    return-void
.end method

.method private write(Lorg/h2/store/Data;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {p1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/h2/store/Data;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/store/PageOutputStream;->write([BII)V

    invoke-virtual {p1}, Lorg/h2/store/Data;->reset()V

    return-void
.end method


# virtual methods
.method public addUndo(ILorg/h2/store/Data;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/h2/store/PageLog;->freeing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log undo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const-string v0, "Undo entry not written"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    iget-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    iget-object v0, p0, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    aget-byte p1, p1, v2

    if-nez p1, :cond_3

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    iget-object v1, p0, Lorg/h2/store/PageLog;->compress:Lorg/h2/compress/CompressLZF;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v1, v3, p1, v4, v2}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v1

    if-ge v1, p1, :cond_4

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->checkCapacity(I)V

    iget-object p1, p0, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v0, p1, v2, v1}, Lorg/h2/store/Data;->write([BII)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2, v2, p1}, Lorg/h2/store/Data;->write([BII)V

    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public checkpoint()V
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/store/PageLog;->logPos:I

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->flush()V

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->fillPage()V

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getCurrentDataPageId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    iget v2, p0, Lorg/h2/store/PageLog;->logSectionId:I

    invoke-virtual {v1, v2, v0}, Lorg/h2/util/IntIntHashMap;->put(II)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v1, "log close"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->close()V

    iput-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    :cond_0
    iput-object v1, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    return-void
.end method

.method public commit(I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log commit s: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getFlushOnEachCommit()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/h2/store/PageLog;->flush()V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/store/PageLog;->flushOut()V

    :cond_0
    return-void
.end method

.method public free()V
    .locals 8

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v1, "log free"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getCurrentDataPageId()I

    move-result v0

    iget-object v2, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v2}, Lorg/h2/store/PageOutputStream;->freeReserved()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/h2/store/PageLog;->freeing:Z

    new-instance v2, Lorg/h2/store/PageStreamTrunk$Iterator;

    iget-object v3, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v4, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-direct {v2, v3, v4}, Lorg/h2/store/PageStreamTrunk$Iterator;-><init>(Lorg/h2/store/PageStore;I)V

    const/16 v3, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    if-eqz v6, :cond_6

    iget-object v7, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v7}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {v2}, Lorg/h2/store/PageStreamTrunk$Iterator;->next()Lorg/h2/store/PageStreamTrunk;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lorg/h2/store/PageStreamTrunk$Iterator;->canDelete()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-virtual {v0, v2, v1}, Lorg/h2/store/PageStore;->free(IZ)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v4, 0x1

    if-lt v4, v3, :cond_3

    invoke-virtual {v6}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v5

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v4

    if-eq v5, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endless loop at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_2
    move v4, v7

    :goto_3
    invoke-virtual {v6, v0}, Lorg/h2/store/PageStreamTrunk;->free(I)I

    invoke-virtual {v6}, Lorg/h2/store/PageStreamTrunk;->getNextTrunk()I

    move-result v6

    iput v6, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    :goto_4
    iput-boolean v1, p0, Lorg/h2/store/PageLog;->freeing:Z

    return-void

    :goto_5
    iput-boolean v1, p0, Lorg/h2/store/PageLog;->freeing:Z

    throw v0
.end method

.method public getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/store/SessionState;

    iget-object v2, v2, Lorg/h2/store/SessionState;->inDoubtTransaction:Lorg/h2/store/PageStoreInDoubtTransaction;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLogFirstSectionId()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    return v0
.end method

.method public getLogPos()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageLog;->logPos:I

    return v0
.end method

.method public getLogSectionId()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    return v0
.end method

.method public getMinPageId()I
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getMinPageId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/store/PageOutputStream;->getSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getUndo(I)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result p1

    return p1
.end method

.method public logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V
    .locals 7

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v2, "+"

    goto :goto_0

    :cond_0
    const-string v2, "-"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    iget v1, p0, Lorg/h2/store/PageLog;->logPos:I

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->addLogPos(II)V

    iget v0, p0, Lorg/h2/store/PageLog;->logPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->logPos:I

    iget-object v0, p0, Lorg/h2/store/PageLog;->dataBuffer:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-interface {p3, v0}, Lorg/h2/result/Row;->getByteCount(Lorg/h2/store/Data;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->isRedoLogBinaryEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_3
    invoke-virtual {v0, v4}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v1

    if-eqz p4, :cond_5

    const/4 v2, 0x5

    goto :goto_3

    :cond_5
    const/4 v2, 0x6

    :goto_3
    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v1, p2}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lorg/h2/store/Data;->writeVarLong(J)V

    if-eqz p4, :cond_6

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->checkCapacity(I)V

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result p2

    invoke-virtual {v1, p1, v3, p2}, Lorg/h2/store/Data;->write([BII)V

    :cond_6
    invoke-direct {p0, v1}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void
.end method

.method public logTruncate(Lorg/h2/engine/Session;I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log truncate s: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/h2/store/PageLog;->logSectionId:I

    iget v1, p0, Lorg/h2/store/PageLog;->logPos:I

    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/Session;->addLogPos(II)V

    iget v0, p0, Lorg/h2/store/PageLog;->logPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->logPos:I

    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v0, p2}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-direct {p0, v0}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    return-void
.end method

.method public openForReading(III)V
    .locals 0

    iput p1, p0, Lorg/h2/store/PageLog;->logKey:I

    iput p2, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iput p3, p0, Lorg/h2/store/PageLog;->firstDataPage:I

    return-void
.end method

.method public openForWriting(IZ)V
    .locals 8

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log openForWriting firstPage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iput p1, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget v0, p0, Lorg/h2/store/PageLog;->logKey:I

    const/4 v1, 0x1

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lorg/h2/store/PageLog;->logKey:I

    new-instance v0, Lorg/h2/store/PageOutputStream;

    iget-object v3, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget-object v5, p0, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    move-object v2, v0

    move v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/h2/store/PageOutputStream;-><init>(Lorg/h2/store/PageStore;ILorg/h2/util/BitField;IZ)V

    iput-object v0, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v0, v1}, Lorg/h2/store/PageOutputStream;->reserve(I)V

    iget-object p2, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v0, p0, Lorg/h2/store/PageLog;->logKey:I

    iget-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v1}, Lorg/h2/store/PageOutputStream;->getCurrentDataPageId()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/h2/store/PageStore;->setLogFirstPage(III)V

    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/store/PageLog;->writeBuffer:Lorg/h2/store/Data;

    return-void
.end method

.method public prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log prepare commit s: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v1}, Lorg/h2/store/PageOutputStream;->flush()V

    iget-object v1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {v1}, Lorg/h2/store/PageOutputStream;->fillPage()V

    invoke-direct {p0}, Lorg/h2/store/PageLog;->getBuffer()Lorg/h2/store/Data;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v1, p2}, Lorg/h2/store/Data;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result p1

    invoke-static {v0}, Lorg/h2/store/PageStreamData;->getCapacity(I)I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-direct {p0, v1}, Lorg/h2/store/PageLog;->write(Lorg/h2/store/Data;)V

    invoke-direct {p0}, Lorg/h2/store/PageLog;->flushOut()V

    iget-object p1, p0, Lorg/h2/store/PageLog;->pageOut:Lorg/h2/store/PageOutputStream;

    invoke-virtual {p1}, Lorg/h2/store/PageOutputStream;->fillPage()V

    iget-object p1, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getFlushOnEachCommit()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/h2/store/PageLog;->flush()V

    :cond_2
    return-void

    :cond_3
    const-string p1, "transaction name (too long)"

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public recover(I)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "log recover stage: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    if-ne v2, v4, :cond_1

    new-instance v0, Lorg/h2/store/PageInputStream;

    iget-object v2, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v3, v1, Lorg/h2/store/PageLog;->logKey:I

    iget v5, v1, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget v6, v1, Lorg/h2/store/PageLog;->firstDataPage:I

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/h2/store/PageInputStream;-><init>(Lorg/h2/store/PageStore;III)V

    invoke-virtual {v0}, Lorg/h2/store/PageInputStream;->allocateAllPages()Lorg/h2/util/BitField;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/store/PageLog;->usedLogPages:Lorg/h2/util/BitField;

    invoke-virtual {v0}, Lorg/h2/store/PageInputStream;->close()V

    return v4

    :cond_1
    new-instance v5, Lorg/h2/store/PageInputStream;

    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v6, v1, Lorg/h2/store/PageLog;->logKey:I

    iget v7, v1, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget v8, v1, Lorg/h2/store/PageLog;->firstDataPage:I

    invoke-direct {v5, v0, v6, v7, v8}, Lorg/h2/store/PageInputStream;-><init>(Lorg/h2/store/PageStore;III)V

    new-instance v6, Lorg/h2/store/DataReader;

    invoke-direct {v6, v5}, Lorg/h2/store/DataReader;-><init>(Ljava/io/InputStream;)V

    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    const/4 v10, 0x2

    :try_start_0
    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readByte()B

    move-result v11
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    if-gez v11, :cond_2

    move v3, v9

    goto/16 :goto_f

    :cond_2
    add-int/lit8 v9, v0, 0x1

    if-ne v11, v4, :cond_7

    :try_start_1
    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v11

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v7}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget-object v12, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v12

    invoke-virtual {v6, v0, v12}, Lorg/h2/store/DataReader;->readFully([BI)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    if-ne v15, v4, :cond_4

    invoke-virtual {v7}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget-object v12, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v12}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v12

    invoke-static {v0, v3, v12, v3}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v6, v0, v15}, Lorg/h2/store/DataReader;->readFully([BI)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v12, v1, Lorg/h2/store/PageLog;->compress:Lorg/h2/compress/CompressLZF;

    iget-object v13, v1, Lorg/h2/store/PageLog;->compressBuffer:[B

    invoke-virtual {v7}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v16

    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v18

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    :goto_1
    if-nez v2, :cond_19

    iget-object v0, v1, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v12, "log undo {0}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v13, v14, v3

    invoke-virtual {v0, v12, v14}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v11, v7}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    iget-object v0, v1, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->set(I)V

    iget-object v0, v1, Lorg/h2/store/PageLog;->undoAll:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->set(I)V

    goto/16 :goto_7

    :cond_6
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v12, "log undo skip {0}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v11, v13, v3

    invoke-virtual {v0, v12, v13}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_7

    :cond_7
    const/4 v0, 0x5

    const-string v12, "log ignore s: "

    const-string v13, " "

    if-ne v11, v0, :cond_b

    :try_start_4
    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v11

    iget-object v14, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v14}, Lorg/h2/store/PageStore;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/engine/Database;->getRowFactory()Lorg/h2/result/RowFactory;

    move-result-object v14

    invoke-static {v14, v6, v7}, Lorg/h2/store/PageLog;->readRow(Lorg/h2/result/RowFactory;Lorg/h2/store/DataReader;Lorg/h2/store/Data;)Lorg/h2/result/Row;

    move-result-object v14
    :try_end_4
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v2, :cond_8

    :try_start_5
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v9, v11, v14}, Lorg/h2/store/PageStore;->allocateIfIndexRoot(IILorg/h2/result/Row;)V
    :try_end_5
    .catch Lorg/h2/message/DbException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_7

    :cond_8
    if-ne v2, v10, :cond_19

    :try_start_6
    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->isSessionCommitted(III)Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v12, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v12}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log redo + table: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_9
    :goto_4
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v11, v14, v4}, Lorg/h2/store/PageStore;->redo(ILorg/h2/result/Row;Z)V

    goto/16 :goto_7

    :cond_a
    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v3}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " + table: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    const/4 v0, 0x6

    if-ne v11, v0, :cond_e

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v3

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarLong()J

    move-result-wide v14

    if-ne v2, v10, :cond_18

    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->isSessionCommitted(III)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v11}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "log redo - table: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " s:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v3, v14, v15}, Lorg/h2/store/PageStore;->redoDelete(IJ)V

    goto/16 :goto_6

    :cond_d
    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v11}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - table: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    const/4 v0, 0x7

    if-ne v11, v0, :cond_11

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v3

    if-ne v2, v10, :cond_18

    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->isSessionCommitted(III)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "log redo truncate table: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_f
    iget-object v0, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->redoTruncate(I)V

    goto/16 :goto_6

    :cond_10
    iget-object v4, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " truncate table: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v4, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_6

    :cond_11
    const/4 v0, 0x3

    const-string v3, " pos: "

    if-ne v11, v0, :cond_13

    :try_start_7
    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readString()Ljava/lang/String;

    move-result-object v4

    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v11}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "log prepare commit "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_12
    if-nez v2, :cond_18

    invoke-virtual {v5}, Lorg/h2/store/PageInputStream;->getDataPage()I

    move-result v3

    invoke-direct {v1, v0, v3, v4}, Lorg/h2/store/PageLog;->setPrepareCommit(IILjava/lang/String;)V

    goto :goto_6

    :cond_13
    const/4 v0, 0x4

    if-ne v11, v0, :cond_14

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    iget-object v4, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "log rollback "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_14
    if-ne v11, v10, :cond_16

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    iget-object v4, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "log commit "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_15
    if-nez v2, :cond_18

    invoke-direct {v1, v0, v8, v9}, Lorg/h2/store/PageLog;->setLastCommitForSession(III)V
    :try_end_7
    .catch Lorg/h2/message/DbException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :cond_16
    if-nez v11, :cond_17

    goto :goto_6

    :cond_17
    const/16 v0, 0x8

    if-ne v11, v0, :cond_1a

    const/4 v3, 0x1

    add-int/2addr v8, v3

    :cond_18
    :goto_6
    const/4 v4, 0x1

    :cond_19
    :goto_7
    const/4 v12, 0x0

    goto :goto_b

    :cond_1a
    const/16 v0, 0x9

    if-ne v11, v0, :cond_1c

    :try_start_8
    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_18

    invoke-virtual {v6}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v4

    if-ne v2, v10, :cond_1b

    iget-object v11, v1, Lorg/h2/store/PageLog;->usedLogPages:Lorg/h2/util/BitField;

    invoke-virtual {v11, v4}, Lorg/h2/util/BitField;->get(I)Z

    move-result v11

    if-nez v11, :cond_1b

    iget-object v11, v1, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;
    :try_end_8
    .catch Lorg/h2/message/DbException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v12, 0x0

    :try_start_9
    invoke-virtual {v11, v4, v12}, Lorg/h2/store/PageStore;->free(IZ)V

    :goto_9
    const/4 v4, 0x1

    goto :goto_a

    :catch_4
    const/4 v12, 0x0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_1b
    const/4 v12, 0x0

    goto :goto_9

    :goto_a
    add-int/2addr v3, v4

    goto :goto_8

    :cond_1c
    const/4 v4, 0x1

    const/4 v12, 0x0

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v3, "log end"

    invoke-virtual {v0, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/h2/message/DbException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v3, 0x0

    goto :goto_f

    :cond_1d
    :goto_b
    move v0, v9

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :catch_6
    move v3, v9

    :catch_7
    :goto_c
    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v4, "log recovery completed"

    :goto_d
    invoke-virtual {v0, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto :goto_f

    :catch_8
    move-exception v0

    move v3, v9

    :goto_e
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v4

    const v5, 0x15fae

    if-ne v4, v5, :cond_1f

    iget-object v0, v1, Lorg/h2/store/PageLog;->trace:Lorg/h2/message/Trace;

    const-string v4, "log recovery stopped"

    goto :goto_d

    :goto_f
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, v1, Lorg/h2/store/PageLog;->undo:Lorg/h2/util/BitField;

    if-ne v2, v10, :cond_1e

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/h2/store/PageLog;->usedLogPages:Lorg/h2/util/BitField;

    :cond_1e
    return v3

    :cond_1f
    throw v0
.end method

.method public recoverEnd()V
    .locals 1

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageLog;->sessionStates:Ljava/util/HashMap;

    return-void
.end method

.method public removeUntil(I)V
    .locals 4

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result v0

    iget v1, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    invoke-direct {p0, v1, v0}, Lorg/h2/store/PageLog;->removeUntil(II)I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageLog;->firstTrunkPage:I

    iget-object v2, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    iget v3, p0, Lorg/h2/store/PageLog;->logKey:I

    invoke-virtual {v2, v3, v1, v0}, Lorg/h2/store/PageStore;->setLogFirstPage(III)V

    :goto_0
    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    if-ge v0, p1, :cond_2

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/h2/store/PageLog;->logSectionPageMap:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v1, v0}, Lorg/h2/util/IntIntHashMap;->remove(I)V

    :cond_1
    iget v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/PageLog;->firstSectionId:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setInDoubtTransactionState(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p2

    check-cast p2, Lorg/h2/store/PageStreamData;

    invoke-virtual {p2}, Lorg/h2/store/PageStreamData;->initWrite()V

    iget-object v0, p0, Lorg/h2/store/PageLog;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    int-to-byte p3, p3

    invoke-virtual {v0, p3}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {v0, p1}, Lorg/h2/store/Data;->writeVarInt(I)V

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p1

    array-length p3, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lorg/h2/store/PageStreamData;->write([BII)I

    invoke-virtual {p2}, Lorg/h2/store/PageStreamData;->getRemaining()I

    move-result p1

    new-array p3, p1, [B

    invoke-virtual {p2, p3, v0, p1}, Lorg/h2/store/PageStreamData;->write([BII)I

    invoke-virtual {p2}, Lorg/h2/store/PageStreamData;->write()V

    return-void
.end method
