.class public abstract Landroidx/media3/common/MediaItem$SubtitleConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_URI:Ljava/lang/String;


# instance fields
.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final roleFlags:I

.field public final selectionFlags:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$2800(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$2900(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3000(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3100(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3200(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3300(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3400(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iget v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iget v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method
