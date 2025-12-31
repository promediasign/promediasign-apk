.class abstract Lorg/spongycastle/cert/CertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMPTY_LIST:Ljava/util/List;

.field private static EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/cert/CertUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public static generateFullCert(Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/asn1/x509/TBSCertificate;)Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/spongycastle/cert/CertUtils;->generateSig(Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/spongycastle/cert/CertUtils;->generateStructure(Lorg/spongycastle/asn1/x509/TBSCertificate;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/X509CertificateHolder;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateSig(Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 2

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p0

    return-object p0
.end method

.method private static generateStructure(Lorg/spongycastle/asn1/x509/TBSCertificate;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    return-object p0
.end method
