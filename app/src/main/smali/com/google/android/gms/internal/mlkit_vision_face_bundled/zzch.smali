.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;

    return-void
.end method

.method private final zzb()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zza:Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/encoders/EncodingException;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzb:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzb:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzcd;

    return-object p0
.end method

.method public final zza(Lcom/google/firebase/encoders/FieldDescriptor;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzch;->zzb:Z

    return-void
.end method
