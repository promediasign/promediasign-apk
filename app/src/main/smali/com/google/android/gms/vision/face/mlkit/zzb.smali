.class final Lcom/google/android/gms/vision/face/mlkit/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/vision/face/mlkit/zzd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "optional-module-face"

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzso;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsn;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzso;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/vision/face/mlkit/zzd;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {v2, p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsp;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzso;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzso;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsm;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/vision/face/mlkit/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzst;Z)V

    iput-object v0, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;Ljava/util/List;J)V
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;->zzcb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;

    iget-object p4, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Ljava/lang/String;J)V
    .locals 0

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;->zzbZ:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;->zzH:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;

    :goto_0
    iget-object p4, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    invoke-virtual {p4, p1, p3, p2}, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;->zzca:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza:Lcom/google/android/gms/vision/face/mlkit/zzd;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/vision/face/mlkit/zzd;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zznv;)V

    return-void
.end method
