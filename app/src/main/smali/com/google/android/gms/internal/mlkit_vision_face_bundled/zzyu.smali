.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;


# instance fields
.field private zzd:I

.field private zze:F

.field private zzf:F

.field private zzg:F

.field private zzh:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    return-void
.end method

.method public static synthetic zzh()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    return-object v0
.end method


# virtual methods
.method public final zzb()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zze:F

    return v0
.end method

.method public final zzd()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzg:F

    return v0
.end method

.method public final zze()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzf:F

    return v0
.end method

.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 p2, 0x1

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyt;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyp;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v3, 0x0

    aput-object p3, p1, v3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzg()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzh:F

    return v0
.end method
