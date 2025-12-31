.class public final Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem$ClippingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private endPositionUs:J

.field private relativeToDefaultPosition:Z

.field private relativeToLiveWindow:Z

.field private startPositionUs:J

.field private startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionUs:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionUs:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionUs:J

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration;)V

    return-void
.end method

.method public static synthetic access$3900(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$4000(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$4100(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    return p0
.end method

.method public static synthetic access$4200(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    return p0
.end method

.method public static synthetic access$4300(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/common/MediaItem$ClippingConfiguration;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$ClippingProperties;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method
