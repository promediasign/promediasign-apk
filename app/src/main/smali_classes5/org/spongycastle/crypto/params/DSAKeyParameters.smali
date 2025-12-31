.class public abstract Lorg/spongycastle/crypto/params/DSAKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SourceFile"


# instance fields
.field private params:Lorg/spongycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/crypto/params/DSAParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/spongycastle/crypto/params/DSAKeyParameters;->params:Lorg/spongycastle/crypto/params/DSAParameters;

    return-void
.end method
