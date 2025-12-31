.class public Lorg/spongycastle/asn1/x500/X500Name;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdns:[Lorg/spongycastle/asn1/x500/RDN;

.field private style:Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-interface {p1, p2}, Lorg/spongycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/x500/X500Name;-><init>([Lorg/spongycastle/asn1/x500/RDN;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    new-array p1, p1, [Lorg/spongycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    aput-object v2, v0, p2

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 1

    .line 6
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/x500/X500Name;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    new-instance v1, Lorg/spongycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-interface {v0, p0, v1}, Lorg/spongycastle/asn1/x500/X500NameStyle;->areEqual(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method

.method public getRDNs()[Lorg/spongycastle/asn1/x500/RDN;
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v1, v0

    new-array v2, v1, [Lorg/spongycastle/asn1/x500/RDN;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lorg/spongycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->toString(Lorg/spongycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
