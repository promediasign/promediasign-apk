.class public final Landroidx/media3/common/MediaItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

.field private customCacheKey:Ljava/lang/String;

.field private drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

.field private imageDurationMs:J

.field private liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

.field private mediaId:Ljava/lang/String;

.field private mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private mimeType:Ljava/lang/String;

.field private requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$1;)V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    sget-object v0, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$Builder;->imageDurationMs:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->mimeType:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$DrmConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$1;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$Builder;->imageDurationMs:J

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/MediaItem;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->access$200(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->access$300(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v3, v0, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    new-instance v14, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v0, Landroidx/media3/common/MediaItem$Builder;->mimeType:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {v2}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->access$300(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$DrmConfiguration;

    move-result-object v1

    :cond_2
    move-object v5, v1

    iget-object v7, v0, Landroidx/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v8, v0, Landroidx/media3/common/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Landroidx/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    iget-wide v11, v0, Landroidx/media3/common/MediaItem$Builder;->imageDurationMs:J

    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Landroidx/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLandroidx/media3/common/MediaItem$1;)V

    move-object/from16 v18, v14

    goto :goto_2

    :cond_3
    move-object/from16 v18, v1

    :goto_2
    new-instance v1, Landroidx/media3/common/MediaItem;

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_3
    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    const-string v2, ""

    goto :goto_3

    :goto_4
    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;

    move-result-object v17

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v19

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz v2, :cond_5

    :goto_5
    move-object/from16 v20, v2

    goto :goto_6

    :cond_5
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_5

    :goto_6
    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    const/16 v22, 0x0

    move-object v15, v1

    move-object/from16 v21, v2

    invoke-direct/range {v15 .. v22}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;Landroidx/media3/common/MediaItem$1;)V

    return-object v1
.end method

.method public setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;
    .locals 0

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setSubtitleConfigurations(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;)",
            "Landroidx/media3/common/MediaItem$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method
