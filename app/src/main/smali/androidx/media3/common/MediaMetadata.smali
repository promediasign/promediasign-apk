.class public final Landroidx/media3/common/MediaMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaMetadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/common/MediaMetadata;

.field private static final FIELD_ALBUM_ARTIST:Ljava/lang/String;

.field private static final FIELD_ALBUM_TITLE:Ljava/lang/String;

.field private static final FIELD_ARTIST:Ljava/lang/String;

.field private static final FIELD_ARTWORK_DATA:Ljava/lang/String;

.field private static final FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

.field private static final FIELD_ARTWORK_URI:Ljava/lang/String;

.field private static final FIELD_COMPILATION:Ljava/lang/String;

.field private static final FIELD_COMPOSER:Ljava/lang/String;

.field private static final FIELD_CONDUCTOR:Ljava/lang/String;

.field private static final FIELD_DESCRIPTION:Ljava/lang/String;

.field private static final FIELD_DISC_NUMBER:Ljava/lang/String;

.field private static final FIELD_DISPLAY_TITLE:Ljava/lang/String;

.field private static final FIELD_EXTRAS:Ljava/lang/String;

.field private static final FIELD_FOLDER_TYPE:Ljava/lang/String;

.field private static final FIELD_GENRE:Ljava/lang/String;

.field private static final FIELD_IS_BROWSABLE:Ljava/lang/String;

.field private static final FIELD_IS_PLAYABLE:Ljava/lang/String;

.field private static final FIELD_MEDIA_TYPE:Ljava/lang/String;

.field private static final FIELD_OVERALL_RATING:Ljava/lang/String;

.field private static final FIELD_RECORDING_DAY:Ljava/lang/String;

.field private static final FIELD_RECORDING_MONTH:Ljava/lang/String;

.field private static final FIELD_RECORDING_YEAR:Ljava/lang/String;

.field private static final FIELD_RELEASE_DAY:Ljava/lang/String;

.field private static final FIELD_RELEASE_MONTH:Ljava/lang/String;

.field private static final FIELD_RELEASE_YEAR:Ljava/lang/String;

.field private static final FIELD_STATION:Ljava/lang/String;

.field private static final FIELD_SUBTITLE:Ljava/lang/String;

.field private static final FIELD_TITLE:Ljava/lang/String;

.field private static final FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

.field private static final FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

.field private static final FIELD_TRACK_NUMBER:Ljava/lang/String;

.field private static final FIELD_USER_RATING:Ljava/lang/String;

.field private static final FIELD_WRITER:Ljava/lang/String;


# instance fields
.field public final albumArtist:Ljava/lang/CharSequence;

.field public final albumTitle:Ljava/lang/CharSequence;

.field public final artist:Ljava/lang/CharSequence;

.field public final artworkData:[B

.field public final artworkDataType:Ljava/lang/Integer;

.field public final artworkUri:Landroid/net/Uri;

.field public final compilation:Ljava/lang/CharSequence;

.field public final composer:Ljava/lang/CharSequence;

.field public final conductor:Ljava/lang/CharSequence;

.field public final description:Ljava/lang/CharSequence;

.field public final discNumber:Ljava/lang/Integer;

.field public final displayTitle:Ljava/lang/CharSequence;

.field public final extras:Landroid/os/Bundle;

.field public final folderType:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final genre:Ljava/lang/CharSequence;

.field public final isBrowsable:Ljava/lang/Boolean;

.field public final isPlayable:Ljava/lang/Boolean;

.field public final mediaType:Ljava/lang/Integer;

.field public final recordingDay:Ljava/lang/Integer;

.field public final recordingMonth:Ljava/lang/Integer;

.field public final recordingYear:Ljava/lang/Integer;

.field public final releaseDay:Ljava/lang/Integer;

.field public final releaseMonth:Ljava/lang/Integer;

.field public final releaseYear:Ljava/lang/Integer;

.field public final station:Ljava/lang/CharSequence;

.field public final subtitle:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final totalDiscCount:Ljava/lang/Integer;

.field public final totalTrackCount:Ljava/lang/Integer;

.field public final trackNumber:Ljava/lang/Integer;

.field public final writer:Ljava/lang/CharSequence;

.field public final year:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    const/16 v0, 0x3e8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/MediaMetadata;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$300(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_5

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/MediaMetadata;->getFolderTypeFromMediaType(I)I

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/MediaMetadata;->getMediaTypeFromFolderType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$500(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1100(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1200(Landroidx/media3/common/MediaMetadata$Builder;)Landroidx/media3/common/Rating;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1300(Landroidx/media3/common/MediaMetadata$Builder;)[B

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1500(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v1, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$1900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2300(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2400(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2500(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2600(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2700(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2800(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$2900(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3000(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3100(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3200(Landroidx/media3/common/MediaMetadata$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/MediaMetadata$Builder;->access$3300(Landroidx/media3/common/MediaMetadata$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaMetadata$Builder;Landroidx/media3/common/MediaMetadata$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-void
.end method

.method private static getFolderTypeFromMediaType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static getMediaTypeFromFolderType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x14

    return p0

    :pswitch_0
    const/16 p0, 0x19

    return p0

    :pswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    const/16 p0, 0x16

    return p0

    :pswitch_4
    const/16 p0, 0x15

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaMetadata$Builder;
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaMetadata$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/MediaMetadata;

    if-eq v3, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaMetadata;

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    iget-object v3, p1, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ne v2, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    iget-object v11, v0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-static {v11}, Ljava/util/Arrays;->hashCode([B)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iget-object v13, v0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iget-object v14, v0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iget-object v15, v0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    move-object/from16 v17, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    move-object/from16 v18, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    move-object/from16 v19, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    move-object/from16 v20, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    move-object/from16 v21, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    move-object/from16 v22, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    move-object/from16 v23, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    move-object/from16 v24, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    move-object/from16 v25, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    move-object/from16 v26, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    move-object/from16 v27, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    move-object/from16 v28, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    move-object/from16 v29, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    move-object/from16 v30, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    move-object/from16 v31, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    move-object/from16 v32, v2

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v0, v16

    const/4 v4, 0x1

    aput-object v5, v0, v4

    const/4 v4, 0x2

    aput-object v6, v0, v4

    const/4 v4, 0x3

    aput-object v7, v0, v4

    const/4 v4, 0x4

    aput-object v8, v0, v4

    const/4 v4, 0x5

    aput-object v9, v0, v4

    const/4 v4, 0x6

    aput-object v10, v0, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-object v5, v0, v4

    const/16 v4, 0x8

    aput-object v5, v0, v4

    const/16 v4, 0x9

    aput-object v11, v0, v4

    const/16 v4, 0xa

    aput-object v12, v0, v4

    const/16 v4, 0xb

    aput-object v13, v0, v4

    const/16 v4, 0xc

    aput-object v14, v0, v4

    const/16 v4, 0xd

    aput-object v15, v0, v4

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v17, v0, v1

    const/16 v1, 0x11

    aput-object v18, v0, v1

    const/16 v1, 0x12

    aput-object v19, v0, v1

    const/16 v1, 0x13

    aput-object v20, v0, v1

    const/16 v1, 0x14

    aput-object v21, v0, v1

    const/16 v1, 0x15

    aput-object v22, v0, v1

    const/16 v1, 0x16

    aput-object v23, v0, v1

    const/16 v1, 0x17

    aput-object v24, v0, v1

    const/16 v1, 0x18

    aput-object v25, v0, v1

    const/16 v1, 0x19

    aput-object v26, v0, v1

    const/16 v1, 0x1a

    aput-object v27, v0, v1

    const/16 v1, 0x1b

    aput-object v28, v0, v1

    const/16 v1, 0x1c

    aput-object v29, v0, v1

    const/16 v1, 0x1d

    aput-object v30, v0, v1

    const/16 v1, 0x1e

    aput-object v31, v0, v1

    const/16 v1, 0x1f

    aput-object v32, v0, v1

    const/16 v1, 0x20

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
