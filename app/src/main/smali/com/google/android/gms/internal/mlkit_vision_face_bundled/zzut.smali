.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzub;
.source "SourceFile"


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzb:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyg;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzc:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzus;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzub;-><init>()V

    return-void
.end method

.method public static bridge synthetic zzB()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzc:Z

    return v0
.end method

.method public static zzt(ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzu(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzv(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyl;->zzc(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvt;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzw(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzw(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzx(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzy([BII)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuq;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuq;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final zzA(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyk;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvt;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzq(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zzl([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzur;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzur;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(B)V
.end method

.method public abstract zzd(IZ)V
.end method

.method public abstract zze(ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzul;)V
.end method

.method public abstract zzf(II)V
.end method

.method public abstract zzg(I)V
.end method

.method public abstract zzh(IJ)V
.end method

.method public abstract zzi(J)V
.end method

.method public abstract zzj(II)V
.end method

.method public abstract zzk(I)V
.end method

.method public abstract zzl([BII)V
.end method

.method public abstract zzm(ILjava/lang/String;)V
.end method

.method public abstract zzo(II)V
.end method

.method public abstract zzp(II)V
.end method

.method public abstract zzq(I)V
.end method

.method public abstract zzr(IJ)V
.end method

.method public abstract zzs(J)V
.end method

.method public final zzz()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;->zza()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
