.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;


# instance fields
.field private volatile zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzay;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzay;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzax;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "<supplier that returned null>"

    .line 8
    .line 9
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Suppliers.memoize("

    .line 14
    .line 15
    const-string v2, ")"

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
