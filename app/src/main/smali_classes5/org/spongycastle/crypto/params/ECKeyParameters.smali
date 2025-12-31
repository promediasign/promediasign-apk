.class public abstract Lorg/spongycastle/crypto/params/ECKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"


# instance fields
.field params:Lorg/spongycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/spongycastle/crypto/params/ECKeyParameters;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    return-void
.end method
