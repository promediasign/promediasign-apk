.class public abstract Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/video/VideoViewInterface;


# static fields
.field private static final CLEAR_ATRIB_LIST_1:[I

.field private static final CLEAR_ATRIB_LIST_3:[I


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3038

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->CLEAR_ATRIB_LIST_1:[I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->CLEAR_ATRIB_LIST_3:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->REQUEST_USER_AGENT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT:Ljava/lang/String;

    :cond_1
    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v3, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v3}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v3, v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public clearSurface(Ljava/lang/Object;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v5, 0x1

    new-array v8, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->CLEAR_ATRIB_LIST_1:[I

    const/4 v1, 0x1

    new-array v6, v1, [I

    move-object v1, v0

    move-object v2, v7

    move-object v4, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget-object v1, v8, v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_CONTEXT_ATTRIBUTE_LIST:[I

    invoke-interface {v0, v7, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->CLEAR_ATRIB_LIST_3:[I

    invoke-interface {v0, v7, v1, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    invoke-interface {v0, v7, p1, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-interface {v0, v7, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-interface {v0, v7, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v7, p1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v0, v7, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method public createMediaSource(Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2

    .line 2
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    const-string v1, "forceTcp"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;->setForceUseRtpTcp(Z)Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/rtsp/RtspMediaSource;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    new-instance v1, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;

    invoke-direct {v1}, Landroidx/media3/datasource/rtmp/RtmpDataSource$Factory;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    new-instance v1, Lsk/mimac/slideshow/gui/video/SimpleLoadErrorHandlingPolicy;

    invoke-direct {v1}, Lsk/mimac/slideshow/gui/video/SimpleLoadErrorHandlingPolicy;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1
.end method
