.class final Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;

.field private static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzi:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzj:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzk:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;

    .line 7
    .line 8
    const-string v0, "durationMs"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    .line 21
    const-string v0, "errorCode"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 33
    .line 34
    const-string v0, "isColdCall"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 46
    .line 47
    const-string v0, "autoManageModelOnBackground"

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x4

    .line 54
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 59
    .line 60
    const-string v0, "autoManageModelOnLowMemory"

    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v1, 0x5

    .line 67
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 72
    .line 73
    const-string v0, "isNnApiEnabled"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x6

    .line 80
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 85
    .line 86
    const-string v0, "eventsCount"

    .line 87
    .line 88
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v1, 0x7

    .line 93
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 98
    .line 99
    const-string v0, "otherErrors"

    .line 100
    .line 101
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/16 v1, 0x8

    .line 106
    .line 107
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 112
    .line 113
    const-string v0, "remoteConfigValueForAcceleration"

    .line 114
    .line 115
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/16 v1, 0x9

    .line 120
    .line 121
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 126
    .line 127
    const-string v0, "isAccelerated"

    .line 128
    .line 129
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/16 v1, 0xa

    .line 134
    .line 135
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->e(ILcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 140
    .line 141
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p1, 0x0

    throw p1
.end method
