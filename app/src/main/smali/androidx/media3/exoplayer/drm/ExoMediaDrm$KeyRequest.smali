.class public final Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# instance fields
.field private final data:[B

.field private final licenseServerUrl:Ljava/lang/String;

.field private final requestType:I


# direct methods
.method public constructor <init>([BLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->data:[B

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    iput p3, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->requestType:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->data:[B

    return-object v0
.end method

.method public getLicenseServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-object v0
.end method
