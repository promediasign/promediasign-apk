.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzea;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhz;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzed;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzed;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzec;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzec;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzee;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhj;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjk;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzep;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzki;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhh;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzij;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjh;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzji;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjg;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzek;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzek;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzie;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzel;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzer;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzer;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzim;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzes;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzes;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzis;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzez;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzit;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfa;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzej;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzej;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfe;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzix;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzff;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzir;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzev;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzip;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzex;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzew;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzew;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzey;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjj;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgl;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzct;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzct;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgk;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgm;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgp;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgo;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzda;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzda;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgt;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbm;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbo;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzco;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzco;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbn;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzar;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhd;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaz;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzby;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzby;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbz;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzay;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzav;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzau;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzca;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzca;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzba;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbd;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbc;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbl;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzck;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzck;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbk;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzce;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzce;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbe;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbh;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbg;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzch;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzch;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjv;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzei;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzei;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzft;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzka;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkd;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjx;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkf;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzge;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzge;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjl;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhn;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgj;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhi;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzds;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhp;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzia;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzef;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzef;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzap;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzga;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzga;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjs;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzgb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgx;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzde;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzde;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgv;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzem;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzen;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzen;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzax;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzja;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjd;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbj;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzci;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzci;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbi;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzcj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjm;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
