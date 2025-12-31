.class public final Landroidx/media3/container/Mp4TimestampData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/container/Mp4TimestampData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final creationTimestampSeconds:J

.field public final modificationTimestampSeconds:J

.field public final timescale:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/container/Mp4TimestampData$1;

    invoke-direct {v0}, Landroidx/media3/container/Mp4TimestampData$1;-><init>()V

    sput-object v0, Landroidx/media3/container/Mp4TimestampData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    iput-wide p3, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    iput-wide p5, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/container/Mp4TimestampData$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/container/Mp4TimestampData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/container/Mp4TimestampData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/container/Mp4TimestampData;

    iget-wide v3, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    iget-wide v5, p1, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    iget-wide v5, p1, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    iget-wide v5, p1, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic getStability()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/Parcelable$-CC;->$default$getStability(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method

.method public final synthetic getWrappedMetadataBytes()[B
    .locals 1

    .line 1
    invoke-static {p0}, Lq/a;->a(Landroidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getWrappedMetadataFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 1
    invoke-static {p0}, Lq/a;->b(Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/a;->c(Landroidx/media3/common/Metadata$Entry;Landroidx/media3/common/MediaMetadata$Builder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mp4Timestamp: creation time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modification time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timescale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
