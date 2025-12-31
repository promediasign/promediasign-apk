.class final Landroidx/media3/exoplayer/rtsp/SessionDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;
    }
.end annotation


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;

.field public final emailAddress:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaDescriptionList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/rtsp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final origin:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final sessionInfo:Ljava/lang/String;

.field public final sessionName:Ljava/lang/String;

.field public final timing:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$100(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$900(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$1000(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$1100(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;->access$1200(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;Landroidx/media3/exoplayer/rtsp/SessionDescription$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/SessionDescription;-><init>(Landroidx/media3/exoplayer/rtsp/SessionDescription$Builder;)V

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

    const-class v3, Landroidx/media3/exoplayer/rtsp/SessionDescription;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    invoke-static {v2, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->origin:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->timing:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->bitrate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->connection:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/SessionDescription;->key:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    return v1
.end method
