.class public final Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem$SubtitleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private roleFlags:I

.field private selectionFlags:I

.field private uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    iget v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    iget-object v0, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;)V

    return-void
.end method

.method public static synthetic access$1800(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Landroidx/media3/common/MediaItem$Subtitle;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->buildSubtitle()Landroidx/media3/common/MediaItem$Subtitle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2800(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$2900(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3000(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3100(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return p0
.end method

.method public static synthetic access$3200(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return p0
.end method

.method public static synthetic access$3300(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3400(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method private buildSubtitle()Landroidx/media3/common/MediaItem$Subtitle;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Subtitle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$Subtitle;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method
