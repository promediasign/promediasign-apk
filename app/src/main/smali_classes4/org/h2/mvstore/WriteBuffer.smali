.class public Lorg/h2/mvstore/WriteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_REUSE_CAPACITY:I = 0x400000

.field private static final MIN_GROW:I = 0x100000


# instance fields
.field private buff:Ljava/nio/ByteBuffer;

.field private reuse:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private ensureCapacity(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/mvstore/WriteBuffer;->grow(I)V

    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private grow(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr p1, v1

    .line 8
    const/high16 v1, 0x100000

    .line 9
    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-long v1, v1

    .line 15
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-long v3, v3

    .line 31
    add-long/2addr v3, v1

    .line 32
    const-wide/32 v1, 0x7fffffff

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    long-to-int v2, v1

    .line 40
    const-string v1, "Capacity: "

    .line 41
    .line 42
    if-lt v2, p1, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    const/high16 p1, 0x400000

    .line 59
    .line 60
    if-gt v2, p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    iput-object p1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :catch_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 68
    .line 69
    invoke-static {v2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 78
    .line 79
    const-string v3, " needed: "

    .line 80
    .line 81
    invoke-static {v1, v2, v3, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()Lorg/h2/mvstore/WriteBuffer;
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    const/high16 v1, 0x400000

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    if-eq v0, v1, :cond_1

    iput-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->reuse:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public get([B)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public limit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public put(B)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(Ljava/nio/ByteBuffer;)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([B)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 3
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([BII)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 4
    invoke-direct {p0, p3}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putChar(C)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putDouble(D)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putFloat(F)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(II)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(J)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(IS)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/WriteBuffer;->buff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putStringData(Ljava/lang/String;I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    mul-int/lit8 v0, p2, 0x3

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->writeStringData(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public putVarInt(I)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/h2/mvstore/DataUtils;->writeVarInt(Ljava/nio/ByteBuffer;I)V

    return-object p0
.end method

.method public putVarLong(J)Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/h2/mvstore/WriteBuffer;->ensureCapacity(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/nio/ByteBuffer;J)V

    return-object p0
.end method
