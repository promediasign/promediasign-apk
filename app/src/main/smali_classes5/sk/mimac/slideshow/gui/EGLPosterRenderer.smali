.class public Lsk/mimac/slideshow/gui/EGLPosterRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_CONFIG_ATTRIBUTE_LIST:[I

.field public static final EGL_CONTEXT_ATTRIBUTE_LIST:[I

.field private static final EGL_SURFACE_ATTRIBUTE_LIST:[I

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final TEXTURE_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field private static final VERTEX_COORDINATE:[F


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->LOG:Lorg/slf4j/Logger;

    const/16 v0, 0x3038

    const/16 v1, 0x8

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_CONFIG_ATTRIBUTE_LIST:[I

    const/16 v2, 0x3086

    const/16 v3, 0x3084

    filled-new-array {v2, v3, v0}, [I

    move-result-object v2

    sput-object v2, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_SURFACE_ATTRIBUTE_LIST:[I

    const/16 v2, 0x3098

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_CONTEXT_ATTRIBUTE_LIST:[I

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->VERTEX_COORDINATE:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    sput-object v1, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->TEXTURE_COORDINATE:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->VERTEX_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->TEXTURE_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3033
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private checkGLESError(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "GLES error: {}"

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v1, "create shader "

    .line 8
    .line 9
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    new-array p2, p2, [I

    .line 24
    .line 25
    const v1, 0x8b81

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 30
    .line 31
    .line 32
    aget p2, p2, v2

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "compile shader "

    .line 42
    .line 43
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return v0
.end method

.method private createTexture()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "gen texture"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "bind texture"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v4, 0x812f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const-string v0, "tex image 2d"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    aget v0, v1, v2

    return v0
.end method

.method private initEGL()V
    .locals 8

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->raiseEGLInitError()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->raiseEGLInitError()V

    :cond_1
    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v6, v0, [I

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_CONFIG_ATTRIBUTE_LIST:[I

    const/4 v5, 0x1

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->raiseEGLInitError()V

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v3, v7, v2

    iget-object v4, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    sget-object v5, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_SURFACE_ATTRIBUTE_LIST:[I

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->raiseEGLInitError()V

    :cond_3
    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v7, v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->EGL_CONTEXT_ATTRIBUTE_LIST:[I

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->raiseEGLInitError()V

    :cond_4
    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->raiseEGLInitError()V

    :cond_5
    return-void
.end method

.method private performRenderPoster()V
    .locals 11

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->createTexture()I

    move-result v0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "create program"

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    :cond_0
    const v2, 0x8b31

    const-string v3, "attribute vec4 aPosition;\nattribute vec2 aTexCoord;\n\nvarying vec2 vTexCoord;\n\nvoid main() {\n    vTexCoord = aTexCoord;\n    gl_Position = aPosition;\n}"

    invoke-direct {p0, v2, v3}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->createShader(ILjava/lang/String;)I

    move-result v2

    const v3, 0x8b30

    const-string v4, "precision mediump float;\nuniform sampler2D sTexture;\n\nvarying vec2 vTexCoord;\n\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTexCoord);\n}"

    invoke-direct {p0, v3, v4}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->createShader(ILjava/lang/String;)I

    move-result v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "attach shader "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b82

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v2, v4

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "link program "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    :cond_1
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "use program"

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->checkGLESError(Ljava/lang/String;)V

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const-string v3, "aTexCoord"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    const/4 v9, 0x0

    sget-object v10, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->VERTEX_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    move v5, v2

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    sget-object v10, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->TEXTURE_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v6, 0x2

    move v5, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v5, 0xde1

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "sTexture"

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method private raiseEGLInitError()V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EGL INIT ERROR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shutdownEGL()V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v3, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v2, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->initEGL()V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->performRenderPoster()V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/EGLPosterRenderer;->shutdownEGL()V

    return-void
.end method
