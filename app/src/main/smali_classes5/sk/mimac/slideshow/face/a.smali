.class public final synthetic Lsk/mimac/slideshow/face/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

.field public final synthetic b:J

.field public final synthetic c:Landroid/hardware/camera2/CameraDevice;

.field public final synthetic d:Landroid/media/ImageReader;

.field public final synthetic e:Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;JLandroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/face/a;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    iput-wide p2, p0, Lsk/mimac/slideshow/face/a;->b:J

    iput-object p4, p0, Lsk/mimac/slideshow/face/a;->c:Landroid/hardware/camera2/CameraDevice;

    iput-object p5, p0, Lsk/mimac/slideshow/face/a;->d:Landroid/media/ImageReader;

    iput-object p6, p0, Lsk/mimac/slideshow/face/a;->e:Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v4, p0, Lsk/mimac/slideshow/face/a;->d:Landroid/media/ImageReader;

    iget-object v5, p0, Lsk/mimac/slideshow/face/a;->e:Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;

    iget-object v0, p0, Lsk/mimac/slideshow/face/a;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    iget-wide v1, p0, Lsk/mimac/slideshow/face/a;->b:J

    iget-object v3, p0, Lsk/mimac/slideshow/face/a;->c:Landroid/hardware/camera2/CameraDevice;

    invoke-static/range {v0 .. v5}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->e(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;JLandroid/hardware/camera2/CameraDevice;Landroid/media/ImageReader;Lsk/mimac/slideshow/face/FaceDetectionService$SessionStateCallback;)V

    return-void
.end method
