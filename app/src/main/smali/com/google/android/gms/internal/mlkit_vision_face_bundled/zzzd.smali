.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;


# instance fields
.field private zzd:I

.field private zze:F

.field private zzf:F

.field private zzg:F

.field private zzh:I

.field private zzi:I

.field private zzj:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzh:I

    return-void
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    return-object v0
.end method


# virtual methods
.method public final zzb()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zze:F

    return v0
.end method

.method public final zzd()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzf:F

    return v0
.end method

.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyp;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzza;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u1001\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzb;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a99

    :cond_0
    return v0
.end method
