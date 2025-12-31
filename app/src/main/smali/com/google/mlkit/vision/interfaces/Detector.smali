.class public interface abstract Lcom/google/mlkit/vision/interfaces/Detector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DetectionResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# virtual methods
.method public abstract process(Landroid/media/Image;I)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "TDetectionResultT;>;"
        }
    .end annotation
.end method
