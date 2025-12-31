.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

.field private zzh:F

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:F

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private zzr:F

.field private zzs:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzs:B

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzm:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzn:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-void
.end method

.method public static synthetic zzl()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    return-object v0
.end method

.method public static zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    return-object v0
.end method


# virtual methods
.method public final zzJ()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzh:F

    return v0
.end method

.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzs:B

    return-object v3

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyv;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyp;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyx;

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzr"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzq"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0x10

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0003\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u1001\u0001\u0004\u1001\u0002\u0005\u1001\u0003\u0006\u1001\u0004\u0007\u001b\u0008\u001b\t\u1003\u0007\n\u1001\t\u000b\u1003\u0008\u000c\u1003\u0006\r\u1001\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzs:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzg()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzj:F

    return v0
.end method

.method public final zzh()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzi:F

    return v0
.end method

.method public final zzi()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzk:F

    return v0
.end method

.method public final zzj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzp:J

    return-wide v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzf:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzi()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzn()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzn:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-object v0
.end method

.method public final zzo()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-object v0
.end method
