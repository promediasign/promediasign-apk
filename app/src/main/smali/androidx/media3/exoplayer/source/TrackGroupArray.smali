.class public final Landroidx/media3/exoplayer/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    sput-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/TrackGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    array-length p1, p1

    iput p1, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->verifyCorrectness()V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/TrackGroup;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->lambda$getTrackTypes$0(Landroidx/media3/common/TrackGroup;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getTrackTypes$0(Landroidx/media3/common/TrackGroup;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Landroidx/media3/common/TrackGroup;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private verifyCorrectness()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackGroup;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/source/TrackGroupArray;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v2, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    iget v3, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public get(I)Landroidx/media3/common/TrackGroup;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/TrackGroup;

    return-object p1
.end method

.method public getTrackTypes()Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    new-instance v1, LD/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LD/k;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Landroidx/media3/common/TrackGroup;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
