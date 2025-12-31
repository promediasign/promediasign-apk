.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzac;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzx;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzr;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v3, 0x0

    aput-object p3, p1, v3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzab;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
