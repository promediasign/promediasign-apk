.class public Lorg/spongycastle/operator/bc/BcRSAContentSignerBuilder;
.super Lorg/spongycastle/operator/bc/BcContentSignerBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/operator/bc/BcContentSignerBuilder;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method


# virtual methods
.method public createSigner(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/Signer;
    .locals 0

    iget-object p1, p0, Lorg/spongycastle/operator/bc/BcContentSignerBuilder;->digestProvider:Lorg/spongycastle/operator/bc/BcDigestProvider;

    invoke-interface {p1, p2}, Lorg/spongycastle/operator/bc/BcDigestProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/crypto/ExtendedDigest;

    move-result-object p1

    new-instance p2, Lorg/spongycastle/crypto/signers/RSADigestSigner;

    invoke-direct {p2, p1}, Lorg/spongycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/spongycastle/crypto/Digest;)V

    return-object p2
.end method
