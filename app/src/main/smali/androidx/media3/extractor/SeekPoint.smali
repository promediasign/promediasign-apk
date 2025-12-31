.class public final Landroidx/media3/extractor/SeekPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final START:Landroidx/media3/extractor/SeekPoint;


# instance fields
.field public final position:J

.field public final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    sput-object v0, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iput-wide p3, p0, Landroidx/media3/extractor/SeekPoint;->position:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/extractor/SeekPoint;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/extractor/SeekPoint;

    iget-wide v2, p0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v4, p1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-wide v4, p1, Landroidx/media3/extractor/SeekPoint;->position:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/extractor/SeekPoint;->position:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[timeUs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", position="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/media3/extractor/SeekPoint;->position:J

    .line 19
    .line 20
    const-string v3, "]"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
