.class public final Landroidx/media3/container/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/container/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry$1;

    invoke-direct {v0}, Landroidx/media3/container/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Landroidx/media3/container/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/container/MdtaMetadataEntry$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    iput p3, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    iput p4, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/container/MdtaMetadataEntry;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final synthetic getStability()I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/Parcelable$-CC;->$default$getStability(Landroid/os/Parcelable;)I

    move-result v0

    return v0
.end method

.method public final synthetic getWrappedMetadataBytes()[B
    .locals 1

    .line 1
    invoke-static {p0}, Lq/a;->a(Landroidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getWrappedMetadataFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 1
    invoke-static {p0}, Lq/a;->b(Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x20f

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    .line 25
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    return v1
.end method

.method public final synthetic populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/a;->c(Landroidx/media3/common/Metadata$Entry;Landroidx/media3/common/MediaMetadata$Builder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/16 v1, 0x17

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x43

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/common/util/Util;->toHexString([B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/Util;->toInteger([B)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/media3/common/util/Util;->toFloat([B)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "mdta: key="

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 57
    .line 58
    const-string v3, ", value="

    .line 59
    .line 60
    invoke-static {v1, v2, v3, v0}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
