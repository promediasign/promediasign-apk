.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;
.super Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder;
    }
.end annotation


# instance fields
.field private final criticalSectionEnterTimeoutMs:I

.field private final eventCleanUpAge:J

.field private final loadBatchSize:I

.field private final maxBlobByteSizePerRow:I

.field private final maxStorageSizeInBytes:J


# direct methods
.method private constructor <init>(JIIJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;-><init>()V

    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxStorageSizeInBytes:J

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->loadBatchSize:I

    iput p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    iput-wide p5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->eventCleanUpAge:J

    iput p7, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxBlobByteSizePerRow:I

    return-void
.end method

.method public synthetic constructor <init>(JIIJILcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;-><init>(JIIJI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxStorageSizeInBytes:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxStorageSizeInBytes()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->loadBatchSize:I

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getLoadBatchSize()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getCriticalSectionEnterTimeoutMs()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->eventCleanUpAge:J

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getEventCleanUpAge()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxBlobByteSizePerRow:I

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxBlobByteSizePerRow()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCriticalSectionEnterTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    return v0
.end method

.method public getEventCleanUpAge()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->eventCleanUpAge:J

    return-wide v0
.end method

.method public getLoadBatchSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->loadBatchSize:I

    return v0
.end method

.method public getMaxBlobByteSizePerRow()I
    .locals 1

    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxBlobByteSizePerRow:I

    return v0
.end method

.method public getMaxStorageSizeInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxStorageSizeInBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxStorageSizeInBytes:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    iget v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->loadBatchSize:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    iget v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->eventCleanUpAge:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxBlobByteSizePerRow:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxStorageSizeInBytes:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", loadBatchSize="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->loadBatchSize:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", criticalSectionEnterTimeoutMs="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->criticalSectionEnterTimeoutMs:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", eventCleanUpAge="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->eventCleanUpAge:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", maxBlobByteSizePerRow="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->maxBlobByteSizePerRow:I

    .line 49
    .line 50
    const-string v2, "}"

    .line 51
    .line 52
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
