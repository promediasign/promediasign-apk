.class public abstract Lorg/spongycastle/asn1/ASN1TaggedObject;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Encodable;
.implements Lorg/spongycastle/asn1/InMemoryRepresentable;


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lorg/spongycastle/asn1/ASN1Encodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->empty:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, p3, Lorg/spongycastle/asn1/ASN1Choice;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    :goto_0
    iput p2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-boolean p1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eqz p1, :cond_1

    :goto_1
    iput-object p3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    instance-of p1, p1, Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    iget v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v2, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->empty:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->empty:Z

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_2

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz p1, :cond_3

    return v1

    :cond_2
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isExplicit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    return v0
.end method

.method public toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/DLTaggedObject;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DLTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
