.class public Lorg/spongycastle/asn1/DERApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1ApplicationSpecific;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    return-void
.end method
