.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face/zzob;


# instance fields
.field private zza:Lcom/google/firebase/inject/Provider;

.field private final zzb:Lcom/google/firebase/inject/Provider;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zznt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face/zznt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zznt;

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/datatransport/cct/CCTDestination;->getSupportedEncodings()Ljava/util/Set;

    move-result-object p2

    const-string v0, "json"

    invoke-static {v0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzoh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzoh;-><init>(Lcom/google/android/datatransport/TransportFactory;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zza:Lcom/google/firebase/inject/Provider;

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzoi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzoi;-><init>(Lcom/google/android/datatransport/TransportFactory;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zzb:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zznt;Lcom/google/android/gms/internal/mlkit_vision_face/zznr;)Lcom/google/android/datatransport/Event;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face/zznt;->zza()I

    move-result p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zznr;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face/zznr;->zze(IZ)[B

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/datatransport/Event;->ofData(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/datatransport/Event;->ofTelemetry(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_face/zznr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zznt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zznt;->zza()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zza:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face/zznt;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face/zznt;Lcom/google/android/gms/internal/mlkit_vision_face/zznr;)Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzok;->zzb:Lcom/google/firebase/inject/Provider;

    goto :goto_0
.end method
