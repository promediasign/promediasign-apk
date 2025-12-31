.class public Landroidx/media3/common/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field private disabledTrackTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private forceHighestSupportedBitrate:Z

.field private forceLowestBitrate:Z

.field private ignoredTextSelectionFlags:I

.field private isPrioritizeImageOverVideoEnabled:Z

.field private maxAudioBitrate:I

.field private maxAudioChannelCount:I

.field private maxVideoBitrate:I

.field private maxVideoFrameRate:I

.field private maxVideoHeight:I

.field private maxVideoWidth:I

.field private minVideoBitrate:I

.field private minVideoFrameRate:I

.field private minVideoHeight:I

.field private minVideoWidth:I

.field private overrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/common/TrackGroup;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioRoleFlags:I

.field private preferredTextLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredTextRoleFlags:I

.field private preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredVideoRoleFlags:I

.field private selectUndeterminedTextLanguage:Z

.field private viewportHeight:I

.field private viewportOrientationMayChange:Z

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    iput v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->isPrioritizeImageOverVideoEnabled:Z

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->init(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public static synthetic access$3500(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    return p0
.end method

.method public static synthetic access$3600(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    return p0
.end method

.method public static synthetic access$3700(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    return p0
.end method

.method public static synthetic access$3800(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    return p0
.end method

.method public static synthetic access$3900(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoWidth:I

    return p0
.end method

.method public static synthetic access$4000(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoHeight:I

    return p0
.end method

.method public static synthetic access$4100(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    return p0
.end method

.method public static synthetic access$4200(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoBitrate:I

    return p0
.end method

.method public static synthetic access$4300(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    return p0
.end method

.method public static synthetic access$4400(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    return p0
.end method

.method public static synthetic access$4500(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    return p0
.end method

.method public static synthetic access$4600(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$4700(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    return p0
.end method

.method public static synthetic access$4800(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$4900(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    return p0
.end method

.method public static synthetic access$5000(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    return p0
.end method

.method public static synthetic access$5100(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    return p0
.end method

.method public static synthetic access$5200(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$5300(Landroidx/media3/common/TrackSelectionParameters$Builder;)Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    return-object p0
.end method

.method public static synthetic access$5400(Landroidx/media3/common/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic access$5500(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    return p0
.end method

.method public static synthetic access$5600(Landroidx/media3/common/TrackSelectionParameters$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    return p0
.end method

.method public static synthetic access$5700(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    return p0
.end method

.method public static synthetic access$5800(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->isPrioritizeImageOverVideoEnabled:Z

    return p0
.end method

.method public static synthetic access$5900(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    return p0
.end method

.method public static synthetic access$6000(Landroidx/media3/common/TrackSelectionParameters$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    return p0
.end method

.method public static synthetic access$6100(Landroidx/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$6200(Landroidx/media3/common/TrackSelectionParameters$Builder;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-object p0
.end method

.method private init(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoHeight:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->minVideoBitrate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredTextRoleFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->isPrioritizeImageOverVideoEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->isPrioritizeImageOverVideoEnabled:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-void
.end method

.method private setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct {v0, p0}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

    return-object v0
.end method

.method public set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->init(Landroidx/media3/common/TrackSelectionParameters;)V

    return-object p0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public setViewportSize(IIZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    iput p2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    iput-boolean p3, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setViewportSize(IIZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    return-object p1
.end method
