.class public abstract Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionConfig;


# instance fields
.field private idleTimeForBoth:I

.field private idleTimeForRead:I

.field private idleTimeForWrite:I

.field private maxReadBufferSize:I

.field private minReadBufferSize:I

.field private readBufferSize:I

.field private throughputCalculationInterval:I

.field private useReadOperation:Z

.field private writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    const/16 v0, 0x800

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    const/high16 v0, 0x10000

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    const/16 v0, 0x3c

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    return-void
.end method


# virtual methods
.method public abstract doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
.end method

.method public final getBothIdleTime()I
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getBothIdleTimeInMillis()J
    .locals 2

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I
    .locals 3

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForBoth:I

    return p1

    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForRead:I

    return p1

    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForWrite:I

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown idle status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getMaxReadBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    return v0
.end method

.method public getMinReadBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    return v0
.end method

.method public getReadBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    return v0
.end method

.method public final getReaderIdleTime()I
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getReaderIdleTimeInMillis()J
    .locals 2

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThroughputCalculationInterval()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    return v0
.end method

.method public getThroughputCalculationIntervalInMillis()J
    .locals 4

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getWriteTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    return v0
.end method

.method public getWriteTimeoutInMillis()J
    .locals 4

    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getWriterIdleTime()I
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getWriterIdleTimeInMillis()J
    .locals 2

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isUseReadOperation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->useReadOperation:Z

    return v0
.end method

.method public final setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setReadBufferSize(I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMinReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setMinReadBufferSize(I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setMaxReadBufferSize(I)V

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getWriteTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setWriteTimeout(I)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setUseReadOperation(Z)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getThroughputCalculationInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setThroughputCalculationInterval(I)V

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBothIdleTime(I)V
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    return-void
.end method

.method public setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V
    .locals 2

    .line 1
    if-ltz p2, :cond_3

    .line 2
    .line 3
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForBoth:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForRead:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForWrite:I

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Unknown idle status: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p2

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Illegal idle time: "

    .line 47
    .line 48
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public setMaxReadBufferSize(I)V
    .locals 3

    .line 1
    const-string v0, "maxReadBufferSize: "

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    .line 6
    .line 7
    if-lt p1, v1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v2, " (expected: greater than "

    .line 15
    .line 16
    invoke-static {p1, v0, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    .line 21
    .line 22
    const/16 v2, 0x29

    .line 23
    .line 24
    invoke-static {p1, v0, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v2, " (expected: 1+)"

    .line 35
    .line 36
    invoke-static {p1, v0, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public setMinReadBufferSize(I)V
    .locals 3

    .line 1
    const-string v0, "minReadBufferSize: "

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v2, " (expected: smaller than "

    .line 15
    .line 16
    invoke-static {p1, v0, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    .line 21
    .line 22
    const/16 v2, 0x29

    .line 23
    .line 24
    invoke-static {p1, v0, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v2, " (expected: 1+)"

    .line 35
    .line 36
    invoke-static {p1, v0, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public setReadBufferSize(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "readBufferSize: "

    .line 9
    .line 10
    const-string v2, " (expected: 1+)"

    .line 11
    .line 12
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public setReaderIdleTime(I)V
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    return-void
.end method

.method public setThroughputCalculationInterval(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "throughputCalculationInterval: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public setUseReadOperation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->useReadOperation:Z

    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "Illegal write timeout: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public setWriterIdleTime(I)V
    .locals 1

    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    return-void
.end method
