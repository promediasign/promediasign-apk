.class public abstract Landroidx/media3/extractor/metadata/id3/Id3Frame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# instance fields
.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

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

.method public synthetic populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/a;->c(Landroidx/media3/common/Metadata$Entry;Landroidx/media3/common/MediaMetadata$Builder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    return-object v0
.end method
