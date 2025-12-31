.class public Lorg/spongycastle/asn1/BERApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1ApplicationSpecific;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2}, Lorg/spongycastle/asn1/BERApplicationSpecific;->getEncodedVector(Lorg/spongycastle/asn1/ASN1EncodableVector;)[B

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method

.method private static getEncodedVector(Lorg/spongycastle/asn1/ASN1EncodableVector;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Object;

    const-string v3, "BER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->tag:I

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeTag(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method
