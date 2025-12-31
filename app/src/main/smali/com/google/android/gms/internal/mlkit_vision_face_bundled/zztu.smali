.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztt<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;"
    }
.end annotation


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zza:I

    return-void
.end method


# virtual methods
.method public abstract zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I
.end method

.method public final zzr()[B
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;->zzu()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzy([BII)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;->zzL(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzz()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "Serializing "

    .line 31
    .line 32
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 33
    .line 34
    invoke-static {v3, v1, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v2
.end method
