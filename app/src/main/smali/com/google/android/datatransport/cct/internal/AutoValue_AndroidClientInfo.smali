.class final Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;
.super Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;
    }
.end annotation


# instance fields
.field private final applicationBuild:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private final fingerprint:Ljava/lang/String;

.field private final hardware:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final manufacturer:Ljava/lang/String;

.field private final mccMnc:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final osBuild:Ljava/lang/String;

.field private final product:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p12}, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast p1, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getSdkVersion()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getSdkVersion()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_0
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_1
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getHardware()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getHardware()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_2
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getProduct()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_4
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getOsBuild()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getOsBuild()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_5
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_6
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_7
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_8
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_9
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_a
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getApplicationBuild()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_c

    if-nez p1, :cond_d

    goto :goto_b

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_e
    return v2
.end method

.method public getApplicationBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AndroidClientInfo{sdkVersion="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", model="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", hardware="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", device="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", product="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", osBuild="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", manufacturer="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", fingerprint="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", locale="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", country="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", mccMnc="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", applicationBuild="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    .line 119
    .line 120
    const-string v2, "}"

    .line 121
    .line 122
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method
