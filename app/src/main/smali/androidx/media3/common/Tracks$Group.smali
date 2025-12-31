.class public final Landroidx/media3/common/Tracks$Group;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Tracks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

.field private static final FIELD_TRACK_GROUP:Ljava/lang/String;

.field private static final FIELD_TRACK_SELECTED:Ljava/lang/String;

.field private static final FIELD_TRACK_SUPPORT:Ljava/lang/String;


# instance fields
.field private final adaptiveSupported:Z

.field public final length:I

.field private final mediaTrackGroup:Landroidx/media3/common/TrackGroup;

.field private final trackSelected:[Z

.field private final trackSupport:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    new-instance v0, Lk1/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Landroidx/media3/common/Tracks$Group;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/common/TrackGroup;->length:I

    iput v0, p0, Landroidx/media3/common/Tracks$Group;->length:I

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    if-eqz p2, :cond_1

    if-le v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

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

    const-class v3, Landroidx/media3/common/Tracks$Group;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Tracks$Group;

    iget-boolean v2, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    iget-boolean v3, p1, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    iget-object v3, p1, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    iget-object p1, p1, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

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

.method public getTrackFormat(I)Landroidx/media3/common/Format;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v0, v0, Landroidx/media3/common/TrackGroup;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0}, Landroidx/media3/common/TrackGroup;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public isSelected()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->contains([ZZ)Z

    move-result v0

    return v0
.end method

.method public isTrackSelected(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean p1, v0, p1

    return p1
.end method
