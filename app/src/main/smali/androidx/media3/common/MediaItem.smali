.class public final Landroidx/media3/common/MediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$ClippingProperties;,
        Landroidx/media3/common/MediaItem$LocalConfiguration;,
        Landroidx/media3/common/MediaItem$LiveConfiguration;,
        Landroidx/media3/common/MediaItem$RequestMetadata;,
        Landroidx/media3/common/MediaItem$Builder;,
        Landroidx/media3/common/MediaItem$ClippingConfiguration;,
        Landroidx/media3/common/MediaItem$Subtitle;,
        Landroidx/media3/common/MediaItem$SubtitleConfiguration;,
        Landroidx/media3/common/MediaItem$AdsConfiguration;,
        Landroidx/media3/common/MediaItem$DrmConfiguration;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/common/MediaItem;

.field private static final FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

.field private static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_MEDIA_ID:Ljava/lang/String;

.field private static final FIELD_MEDIA_METADATA:Ljava/lang/String;

.field private static final FIELD_REQUEST_METADATA:Ljava/lang/String;


# instance fields
.field public final clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

.field public final clippingProperties:Landroidx/media3/common/MediaItem$ClippingProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public final localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public final playbackProperties:Landroidx/media3/common/MediaItem$LocalConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->FIELD_MEDIA_ID:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->FIELD_REQUEST_METADATA:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem;->FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object p3, p0, Landroidx/media3/common/MediaItem;->playbackProperties:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object p4, p0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object p5, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object p2, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iput-object p2, p0, Landroidx/media3/common/MediaItem;->clippingProperties:Landroidx/media3/common/MediaItem$ClippingProperties;

    iput-object p6, p0, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    return-void
.end method

.method public static fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static fromUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem;
    .locals 1

    .line 2
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-object v3, p1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v3, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LocalConfiguration;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$RequestMetadata;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
