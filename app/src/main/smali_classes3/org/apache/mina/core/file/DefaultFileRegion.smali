.class public Lorg/apache/mina/core/file/DefaultFileRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/file/FileRegion;


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private final originalPosition:J

.field private position:J

.field private remainingBytes:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->channel:Ljava/nio/channels/FileChannel;

    iput-wide p2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->originalPosition:J

    iput-wide p2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    iput-wide p4, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remainingBytes may not be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "position may not be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "channel can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFileChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    return-wide v0
.end method

.method public getRemainingBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    return-wide v0
.end method

.method public getWrittenBytes()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    iget-wide v2, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->originalPosition:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public update(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->position:J

    iget-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/file/DefaultFileRegion;->remainingBytes:J

    return-void
.end method
