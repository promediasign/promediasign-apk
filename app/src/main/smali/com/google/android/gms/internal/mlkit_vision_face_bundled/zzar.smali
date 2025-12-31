.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzv()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p2, 0x1

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzr;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u1008\u0001\u0003\u1008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
