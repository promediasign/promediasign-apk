.class public final Landroidx/media3/common/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaItem$LiveConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FIELD_MAX_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

.field private static final FIELD_MIN_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

.field private static final FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

.field public static final UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide p3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide p5, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput p7, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput p8, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V
    .locals 9

    .line 2
    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2000(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v1

    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2100(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v3

    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2200(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v5

    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2300(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F

    move-result v7

    invoke-static {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->access$2400(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v3, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget p1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_1
    add-int/2addr v1, v2

    return v1
.end method
