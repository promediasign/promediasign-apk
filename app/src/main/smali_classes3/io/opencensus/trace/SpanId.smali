.class public final Lio/opencensus/trace/SpanId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/opencensus/trace/SpanId;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lio/opencensus/trace/SpanId;

.field public static final SIZE:I = 0x8


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/opencensus/trace/SpanId;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/SpanId;-><init>(J)V

    sput-object v0, Lio/opencensus/trace/SpanId;->INVALID:Lio/opencensus/trace/SpanId;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/opencensus/trace/SpanId;->id:J

    return-void
.end method

.method public static fromBytes([B)Lio/opencensus/trace/SpanId;
    .locals 6

    .line 1
    const/4 v0, 0x1

    const-string v1, "src"

    invoke-static {p0, v1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const-string v0, "Invalid size: expected %s, got %s"

    invoke-static {v1, v0, v5}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lio/opencensus/trace/SpanId;->fromBytes([BI)Lio/opencensus/trace/SpanId;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes([BI)Lio/opencensus/trace/SpanId;
    .locals 1

    .line 2
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/opencensus/trace/SpanId;

    invoke-static {p0, p1}, Lio/opencensus/trace/BigendianEncoding;->longFromByteArray([BI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lio/opencensus/trace/SpanId;-><init>(J)V

    return-object v0
.end method

.method public static fromLowerBase16(Ljava/lang/CharSequence;)Lio/opencensus/trace/SpanId;
    .locals 6

    .line 1
    const/4 v0, 0x1

    const-string v1, "src"

    invoke-static {p0, v1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v0

    const-string v0, "Invalid size: expected %s, got %s"

    invoke-static {v1, v0, v5}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lio/opencensus/trace/SpanId;->fromLowerBase16(Ljava/lang/CharSequence;I)Lio/opencensus/trace/SpanId;

    move-result-object p0

    return-object p0
.end method

.method public static fromLowerBase16(Ljava/lang/CharSequence;I)Lio/opencensus/trace/SpanId;
    .locals 1

    .line 2
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/opencensus/trace/SpanId;

    invoke-static {p0, p1}, Lio/opencensus/trace/BigendianEncoding;->longFromBase16String(Ljava/lang/CharSequence;I)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lio/opencensus/trace/SpanId;-><init>(J)V

    return-object v0
.end method

.method public static generateRandomId(Ljava/util/Random;)Lio/opencensus/trace/SpanId;
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance p0, Lio/opencensus/trace/SpanId;

    invoke-direct {p0, v0, v1}, Lio/opencensus/trace/SpanId;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/opencensus/trace/SpanId;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    iget-wide v2, p1, Lio/opencensus/trace/SpanId;->id:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lio/opencensus/trace/SpanId;

    invoke-virtual {p0, p1}, Lio/opencensus/trace/SpanId;->compareTo(Lio/opencensus/trace/SpanId;)I

    move-result p1

    return p1
.end method

.method public copyBytesTo([BI)V
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToByteArray(J[BI)V

    return-void
.end method

.method public copyLowerBase16To([CI)V
    .locals 2

    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    invoke-static {v0, v1, p1, p2}, Lio/opencensus/trace/BigendianEncoding;->longToBase16String(J[CI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/SpanId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/opencensus/trace/SpanId;

    iget-wide v3, p0, Lio/opencensus/trace/SpanId;->id:J

    iget-wide v5, p1, Lio/opencensus/trace/SpanId;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v1, p0, Lio/opencensus/trace/SpanId;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lio/opencensus/trace/BigendianEncoding;->longToByteArray(J[BI)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 5

    iget-wide v0, p0, Lio/opencensus/trace/SpanId;->id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toLowerBase16()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/opencensus/trace/SpanId;->copyLowerBase16To([CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpanId{spanId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/opencensus/trace/SpanId;->toLowerBase16()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
