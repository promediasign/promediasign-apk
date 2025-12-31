.class public Lcom/realtek/hardware/RtkHDMIRxRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;,
        Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;
    }
.end annotation


# static fields
.field private static final BUFFER_QUEUE_MAX_SIZE:I = 0x32

.field private static final DEBUG_AUDIO:Z = false

.field private static final DEBUG_VIDEO:Z = false

.field private static final HDMIRX_AUDIO_SWITCH:Ljava/lang/String; = "/sys/devices/virtual/switch/rx_audio/state"

.field private static final HDMIRX_VIDEO_SWITCH:Ljava/lang/String; = "/sys/devices/virtual/switch/rx_video/state"

.field private static final TAG:Ljava/lang/String; = "RtkHDMIRxRecorder"


# instance fields
.field private mAudioByteBufferQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

.field private mAudioEncoderErr:Z

.field private mAudioEncoderHandler:Landroid/os/Handler;

.field private mAudioMode:I

.field private mAudioRxCallbackThread:Landroid/os/HandlerThread;

.field private mAudioRxHandler:Landroid/os/Handler;

.field private mAudioTimeUsQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioTrackIndex:I

.field private mAudioTrackReady:Ljava/util/concurrent/locks/Condition;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mContext:Landroid/content/Context;

.field private volatile mEncoderIsReleasing:Z

.field private mFirstVideoFrameTimeUs:J

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mMediaMuxerReady:Ljava/util/concurrent/locks/Condition;

.field private mOutputFileFd:Ljava/io/FileDescriptor;

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mPreviewVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

.field private mRecordAudioParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;

.field private mRecordFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

.field private mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

.field private mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTrackReadyLock:Ljava/util/concurrent/locks/Lock;

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

.field private mVideoEncoderErr:Z

.field private mVideoEncoderHandler:Landroid/os/Handler;

.field private mVideoEncoderSurface:Landroid/view/Surface;

.field private mVideoTrackIndex:I

.field private mVideoTrackReady:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    iput v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioMode:I

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordFps:Landroid/util/Range;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewFps:Landroid/util/Range;

    const/4 v2, -0x1

    iput v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoTrackIndex:I

    iput v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTrackIndex:I

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mOutputFileFd:Ljava/io/FileDescriptor;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioByteBufferQueue:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTimeUsQueue:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mTrackReadyLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoTrackReady:Ljava/util/concurrent/locks/Condition;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mTrackReadyLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTrackReady:Ljava/util/concurrent/locks/Condition;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mTrackReadyLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxerReady:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mFirstVideoFrameTimeUs:J

    iput-boolean v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderErr:Z

    iput-boolean v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderErr:Z

    iput-boolean v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mEncoderIsReleasing:Z

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordAudioParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;

    invoke-direct {v0, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/realtek/hardware/RtkAudioRxSource;

    invoke-direct {p1}, Lcom/realtek/hardware/RtkAudioRxSource;-><init>()V

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$002(Lcom/realtek/hardware/RtkHDMIRxRecorder;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->startPreview()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoTrackReady:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxerReady:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderErr:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mEncoderIsReleasing:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mFirstVideoFrameTimeUs:J

    return-wide v0
.end method

.method public static synthetic access$1602(Lcom/realtek/hardware/RtkHDMIRxRecorder;J)J
    .locals 0

    iput-wide p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mFirstVideoFrameTimeUs:J

    return-wide p1
.end method

.method public static synthetic access$1700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)I
    .locals 0

    iget p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoTrackIndex:I

    return p0
.end method

.method public static synthetic access$1702(Lcom/realtek/hardware/RtkHDMIRxRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoTrackIndex:I

    return p1
.end method

.method public static synthetic access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioByteBufferQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTimeUsQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/realtek/hardware/RtkHDMIRxRecorder;)I
    .locals 0

    iget p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTrackIndex:I

    return p0
.end method

.method public static synthetic access$2002(Lcom/realtek/hardware/RtkHDMIRxRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTrackIndex:I

    return p1
.end method

.method public static synthetic access$302(Lcom/realtek/hardware/RtkHDMIRxRecorder;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->updatePreview()V

    return-void
.end method

.method public static synthetic access$500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->startVideoAudioEncoder()V

    return-void
.end method

.method public static synthetic access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mTrackReadyLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Lcom/realtek/hardware/RtkAudioRxSource;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTrackReady:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private closePreviewSession()V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void
.end method

.method private releaseAudioEncoder()V
    .locals 4

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/realtek/hardware/RtkAudioRxSource;->setHDMIRxAudioRecord(Z)Z

    :cond_2
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioByteBufferQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioTimeUsQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_4
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioRxCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioRxCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioRxCallbackThread:Landroid/os/HandlerThread;

    :cond_5
    const-string v1, "RtkHDMIRxRecorder"

    const-string v2, "Release audio encoder success !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private releaseMediaMuxer()V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "Release MediaMuxer success !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private releaseVideoEncoder()V
    .locals 3

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

    :cond_1
    const-string v1, "RtkHDMIRxRecorder"

    const-string v2, "Release video encoder success !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setUpAudioEncoder()V
    .locals 4

    const-string v0, "audio/mp4a-latm"

    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "RtkHDMIRxRecorder"

    const-string v2, "Create audio encoder by type failed !!! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AudioEncoderHanlderThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoderHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpAudioEncoderCallback(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordAudioParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->sampleRate:I

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->channelCount:I

    invoke-static {v0, v2, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioRxCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioRxCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioRxCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioRxHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpAudioRxSourceCallback(Landroid/os/Handler;)V

    return-void
.end method

.method private setUpAudioEncoderCallback(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;

    invoke-direct {v1, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    invoke-static {v0, v1, p1}, LA/a;->n(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpAudioRxSourceCallback(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;

    invoke-direct {v1, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    invoke-virtual {v0, v1, p1}, Lcom/realtek/hardware/RtkAudioRxSource;->setCallback(Lcom/realtek/hardware/RtkAudioRxSource$Callback;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setUpMediaMuxer()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mOutputFileFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, LC0/a;->q(Ljava/io/FileDescriptor;)Landroid/media/MediaMuxer;

    move-result-object v0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "Create video MediaMuxer failed !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setUpVideoEncoder()V
    .locals 4

    const-string v0, "video/avc"

    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "RtkHDMIRxRecorder"

    const-string v2, "Create video encoder by type failed !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoEncoderHanlderThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoderHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpVideoEncoderCallback(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->width:I

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->height:I

    invoke-static {v0, v2, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->width:I

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->height:I

    mul-int v2, v2, v1

    mul-int/lit8 v2, v2, 0xf

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->fps:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate-mode"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "profile"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "level"

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method private setUpVideoEncoderCallback(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;

    invoke-direct {v1, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    invoke-static {v0, v1, p1}, LA/a;->n(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private startPreview()V
    .locals 4

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "---- startPreview ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->closePreviewSession()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->width:I

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/realtek/hardware/RtkHDMIRxRecorder$2;

    invoke-direct {v2, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$2;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startVideoAudioEncoder()V
    .locals 2

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "---- startVideoAudioEncoder ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mEncoderIsReleasing:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mFirstVideoFrameTimeUs:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;

    invoke-direct {v1, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreview()V
    .locals 4

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeHDMIRx()V
    .locals 2

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "---- closeHDMIRx ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->isHDMIRxPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->closePreviewSession()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Interrupted while trying to lock camera closing."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->stopBackgroundThread()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkAudioRxSource;->deleteHDMIRxAudioInstance()Z

    :cond_2
    return-void
.end method

.method public getSupportedFpsRanges()[Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FPS: "

    const-string v1, "---- getSupportedFpsRanges ----"

    const-string v2, "RtkHDMIRxRecorder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    const-string v0, "Cannot access the camera."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedPreviewSizes()[Landroid/util/Size;
    .locals 9

    const-class v0, Landroid/graphics/SurfaceTexture;

    const-string v1, "---- getSupportedPreviewSizes ----"

    const-string v2, "RtkHDMIRxRecorder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v3, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutputSizes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    const-string v0, "Cannot access the camera."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedVideoSizes()[Landroid/util/Size;
    .locals 9

    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "---- getSupportedVideoSizes ----"

    const-string v2, "RtkHDMIRxRecorder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v3, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutputSizes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    const-string v0, "Cannot access the camera."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHDMIRxPlugged()Z
    .locals 5

    const-string v0, "RtkHDMIRxRecorder"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/devices/virtual/switch/rx_video/state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const-string v2, "*** IOException in isHDMIRxPlugged ***"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HDMIRx state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " path:/sys/devices/virtual/switch/rx_video/state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public openHDMIRx()V
    .locals 6

    const-string v0, "---- openHDMIRx ----"

    const-string v1, "RtkHDMIRxRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->startBackgroundThread()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot get available preview/video sizes"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Time out waiting to lock camera opening."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Interrupted while trying to lock camera opening."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    const-string v0, "Cannot access the camera."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_3
    :goto_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    const/4 v1, 0x2

    iget v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioMode:I

    const v3, 0xbb80

    invoke-virtual {v0, v3, v1, v2}, Lcom/realtek/hardware/RtkAudioRxSource;->createHDMIRxAudioInstance(III)Z

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkAudioRxSource;->setHDMIRxAudioRender(Z)Z

    return-void
.end method

.method public setAudioMode(I)V
    .locals 0

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mAudioMode:I

    return-void
.end method

.method public setHDMIRxAudioRender(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkAudioRxSource;->setHDMIRxAudioRender(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setListener(Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRtkAudioRxSource:Lcom/realtek/hardware/RtkAudioRxSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkAudioRxSource;->setListener(Lcom/realtek/hardware/RtkAudioRxSource$HDMIRxListener;)V

    :cond_0
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mOutputFileFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setPreviewDisplay(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---- setPreviewDisplay ----: SurfaceTexture="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIRxRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "surfaceTexture must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviewParameters(III)V
    .locals 3

    .line 1
    const-string v0, "---- setPreviewParameters ----: width="

    .line 2
    .line 3
    const-string v1, ", height="

    .line 4
    .line 5
    const-string v2, ", fps="

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "RtkHDMIRxRecorder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2, p3}, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;-><init>(III)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    .line 29
    .line 30
    return-void
.end method

.method public setRecordParameters(Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRecordParameters : RecordVideoParams = {width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtkHDMIRxRecorder"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setRecordParameters : RecordAudioParams = {channelCount="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->channelCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sampleRate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->sampleRate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bitrate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->bitrate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iput-object p2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordAudioParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;

    return-void
.end method

.method public startRecording()V
    .locals 6

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "---- startRecording ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpMediaMuxer()V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpVideoEncoder()V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpAudioEncoder()V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->closePreviewSession()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v3, v2, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->width:I

    iget v2, v2, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->height:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Landroid/util/Range;

    iget-object v4, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v4, v4, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->fps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mRecordVideoParams:Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;

    iget v5, v5, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->fps:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lcom/realtek/hardware/RtkHDMIRxRecorder$3;

    invoke-direct {v2, p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder$3;-><init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 2

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "---- stopRecording ----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mEncoderIsReleasing:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder;->mFirstVideoFrameTimeUs:J

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->releaseVideoEncoder()V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->releaseAudioEncoder()V

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->releaseMediaMuxer()V

    invoke-virtual {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->isHDMIRxPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->startPreview()V

    :cond_0
    return-void
.end method
