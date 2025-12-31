.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuw;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

.field final zzb:Ljava/lang/Object;

.field final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

.field final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuw;-><init>()V

    if-eqz p1, :cond_2

    iget-object p5, p4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;->zzk:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
