.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzht;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_common/zzht;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzht;I)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;)Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;->zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzg;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zzd(IZ)[B
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;->zzm()Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zze(Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;)Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zza(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
