.class final Landroidx/media3/exoplayer/rtsp/RtspRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

.field public final messageBody:Ljava/lang/String;

.field public final method:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILandroidx/media3/exoplayer/rtsp/RtspHeaders;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspRequest;->uri:Landroid/net/Uri;

    iput p2, p0, Landroidx/media3/exoplayer/rtsp/RtspRequest;->method:I

    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspRequest;->headers:Landroidx/media3/exoplayer/rtsp/RtspHeaders;

    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtspRequest;->messageBody:Ljava/lang/String;

    return-void
.end method
