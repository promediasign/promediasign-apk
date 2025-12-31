.class public Lorg/spongycastle/cert/X509CertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/X509CertificateHolder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/cert/X509CertificateHolder;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/spongycastle/cert/X509CertificateHolder;

    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    iget-object p1, p1, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cert/X509CertificateHolder;->x509Certificate:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    return v0
.end method
