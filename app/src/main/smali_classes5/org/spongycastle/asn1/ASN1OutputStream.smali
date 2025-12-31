.class public Lorg/spongycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
    }
.end annotation


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getDERSubStream()Lorg/spongycastle/asn1/ASN1OutputStream;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getDLSubStream()Lorg/spongycastle/asn1/ASN1OutputStream;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeEncoded(II[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeTag(II)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p3}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    return-void
.end method

.method public writeEncoded(I[B)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    invoke-virtual {p0, p2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    return-void
.end method

.method public writeImplicitObject(Lorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;-><init>(Lorg/spongycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLength(I)V
    .locals 3

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    move v1, p1

    const/4 v2, 0x1

    :goto_0
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_1
    if-ltz v2, :cond_2

    shr-int v0, p1, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_1
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_2
    return-void
.end method

.method public writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/spongycastle/asn1/ASN1Primitive;->encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTag(II)V
    .locals 3

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    const/16 p1, 0x80

    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [B

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    :cond_2
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, p2, 0x7f

    or-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_2

    rsub-int/lit8 p1, v2, 0x5

    invoke-virtual {p0, v0, v2, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([BII)V

    :goto_0
    return-void
.end method
