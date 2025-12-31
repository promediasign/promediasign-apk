.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# instance fields
.field private active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

.field private blockBuffer:[B

.field final encoding:Ljava/lang/String;

.field private entryOffset:J

.field private entrySize:J

.field private filepos:J

.field private hasHitEOF:Z

.field private isClosed:Z

.field private final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/dump/Dirent;",
            ">;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

.field private final readBuf:[B

.field private readIdx:I

.field private recordOffset:I

.field private summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBuf:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->pending:Ljava/util/Map;

    new-instance v1, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->hasHitEOF:Z

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->encoding:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    :try_start_0
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    invoke-direct {v1, p2, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->getNTRec()I

    move-result p2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->isCompressed()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->resetBlockSize(IZ)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readCLRI()V

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBITS()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/commons/compress/archivers/dump/Dirent;

    const/4 p2, 0x4

    const-string v1, "."

    const/4 v2, 0x2

    invoke-direct {p1, v2, v2, p2, v1}, Lorg/apache/commons/compress/archivers/dump/Dirent;-><init>(IIILjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;

    invoke-direct {p2, p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;-><init>(Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;)V

    const/16 v0, 0xa

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->queue:Ljava/util/Queue;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnrecognizedFormatException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/UnrecognizedFormatException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private getPath(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/dump/Dirent;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/Dirent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/Dirent;->getIno()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/Dirent;->getParentIno()I

    move-result v3

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/Dirent;->getParentIno()I

    move-result v1

    goto :goto_0
.end method

.method public static matches([BI)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result p0

    return p0

    :cond_1
    const/16 p1, 0x18

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result p0

    const p1, 0xea6c

    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private readBITS()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->BITS:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0
.end method

.method private readCLRI()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->CLRI:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0
.end method

.method private readDirectoryEntry(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)V
    .locals 12

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getEntrySize()J

    move-result-wide v0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    sget-object v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->ADDR:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->INODE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    array-length v3, v3

    if-ge v3, v2, :cond_4

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    :cond_4
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result v3

    if-ne v3, v2, :cond_b

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v2, -0x8

    if-ge v3, v4, :cond_9

    int-to-long v6, v3

    const-wide/16 v8, 0x8

    sub-long v8, v0, v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_9

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    invoke-static {v4, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v4

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    add-int/lit8 v7, v3, 0x4

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert16([BI)I

    move-result v6

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->blockBuffer:[B

    add-int/lit8 v8, v3, 0x6

    aget-byte v8, v7, v8

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    add-int/lit8 v10, v3, 0x8

    add-int/lit8 v11, v3, 0x7

    aget-byte v11, v7, v11

    invoke-static {v9, v7, v10, v11}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->decode(Lorg/apache/commons/compress/archivers/zip/ZipEncoding;[BII)Ljava/lang/String;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, ".."

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_5

    :cond_5
    new-instance v9, Lorg/apache/commons/compress/archivers/dump/Dirent;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v10

    invoke-direct {v9, v4, v10, v8, v7}, Lorg/apache/commons/compress/archivers/dump/Dirent;-><init>(IIILjava/lang/String;)V

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->pending:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {p0, v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->getPath(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v9, v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/dump/Dirent;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/dump/Dirent;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setSimpleName(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->queue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->pending:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    :goto_5
    add-int/2addr v3, v6

    goto/16 :goto_2

    :cond_9
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->peek()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object p1

    const-wide/16 v2, 0x400

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw p1

    :cond_b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->isClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->isClosed:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-nez v1, :cond_b

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->hasHitEOF:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v2

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x400

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isSparseRecord(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v1, v5, v6}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->skip(J)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->getBytesRead()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->filepos:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->ADDR:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v7

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v7

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderHoles()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v7, v7

    mul-long v7, v7, v5

    invoke-virtual {v2, v7, v8}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->skip(J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->getBytesRead()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->filepos:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v2

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->END:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v3

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->hasHitEOF:Z

    return-object v0

    :cond_7
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readDirectoryEntry(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)V

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entryOffset:J

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entrySize:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getHeaderCount()I

    move-result v1

    :goto_3
    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    goto :goto_4

    :cond_8
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entryOffset:J

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getEntrySize()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entrySize:J

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBuf:[B

    array-length v1, v1

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->recordOffset:I

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->getPath(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v2, v0

    :cond_9
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->names:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getIno()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/dump/Dirent;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/Dirent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setSimpleName(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->filepos:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setOffset(J)V

    return-object v1
.end method

.method public read([BII)I
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->hasHitEOF:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->isClosed:Z

    if-nez v1, :cond_c

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entryOffset:J

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entrySize:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    if-eqz v5, :cond_b

    int-to-long v5, p3

    add-long/2addr v5, v1

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    sub-long/2addr v3, v1

    long-to-int p3, v3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-lez p3, :cond_a

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBuf:[B

    array-length v3, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->recordOffset:I

    sub-int/2addr v3, v4

    if-le p3, v3, :cond_4

    array-length v3, v2

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_4
    move v3, p3

    :goto_1
    add-int v5, v4, v3

    array-length v6, v2

    if-gt v5, v6, :cond_5

    invoke-static {v2, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->recordOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->recordOffset:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :cond_5
    if-lez p3, :cond_3

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readRecord()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->verify([B)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;-><init>()V

    throw p1

    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->active:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readIdx:I

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isSparseRecord(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->raw:Lorg/apache/commons/compress/archivers/dump/TapeInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBuf:[B

    array-length v4, v3

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBuf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_9
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->readBuf:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    :goto_3
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->recordOffset:I

    goto :goto_0

    :cond_a
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entryOffset:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->entryOffset:J

    return v1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current dump entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_4
    const/4 p1, -0x1

    return p1
.end method
