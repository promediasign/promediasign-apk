.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

.field private zzf:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzf:B

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    return-object v0
.end method

.method public static zzb([BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzz(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    return-object p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zze:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzf:B

    return-object v2

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzae;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzae;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzr;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u1409\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzf:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
