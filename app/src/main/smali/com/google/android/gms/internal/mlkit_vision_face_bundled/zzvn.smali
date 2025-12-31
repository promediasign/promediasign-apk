.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxx;

    return-void
.end method

.method public static zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;->zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxc;

    move-result-object v0

    return-object v0
.end method

.method public static varargs zzB(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzE()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final zzH(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzk(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method

.method private final zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzy()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object p2

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)V

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzty;)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zzg()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    throw p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    throw p0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    throw p2

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    throw p1

    :goto_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    throw p1
.end method

.method public static zzw(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvq;ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;ZLjava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;
    .locals 9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const v5, 0xc0b2142

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvq;ILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;ZZ)V

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;Ljava/lang/Class;)V

    return-object p2
.end method

.method public static zzx(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyg;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static zzz(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;[BIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzt()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvv;

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzI()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzs()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztu;->zza:I

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzs()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwu;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzD()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzf(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzE()V

    return-void
.end method

.method public final zzE()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    return-void
.end method

.method public final zzG(I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    return-void
.end method

.method public final zzI()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic zzK()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwr;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    return-object v0
.end method

.method public final zzL(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzut;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuu;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyo;)V

    return-void
.end method

.method public abstract zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzp(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzI()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "serialized size must be non-negative, was "

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zza(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    .line 27
    .line 28
    const v2, 0x7fffffff

    .line 29
    .line 30
    .line 31
    and-int/2addr v0, v2

    .line 32
    if-ne v0, v2, :cond_3

    .line 33
    .line 34
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zza(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ltz p1, :cond_2

    .line 39
    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    .line 41
    .line 42
    const/high16 v1, -0x80000000

    .line 43
    .line 44
    and-int/2addr v0, v1

    .line 45
    or-int/2addr v0, p1

    .line 46
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    .line 47
    .line 48
    return p1

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_3
    return v0
.end method

.method public final synthetic zzq()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-object v0
.end method

.method public final zzs()I
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzt()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzH(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;Z)Z

    move-result v0

    return v0
.end method

.method public final zzu()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzI()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "serialized size must be non-negative, was "

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v2

    .line 27
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    .line 28
    .line 29
    const v3, 0x7fffffff

    .line 30
    .line 31
    .line 32
    and-int/2addr v0, v3

    .line 33
    if-eq v0, v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ltz v0, :cond_3

    .line 41
    .line 42
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    .line 43
    .line 44
    const/high16 v2, -0x80000000

    .line 45
    .line 46
    and-int/2addr v1, v2

    .line 47
    or-int/2addr v1, v0

    .line 48
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzd:I

    .line 49
    .line 50
    :goto_0
    return v0

    .line 51
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2
.end method

.method public final zzv()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    return-object v0
.end method

.method public final zzy()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-object v0
.end method
