.class public abstract Lcom/goterl/lazysodium/Sodium;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native crypto_box_keypair([B[B)I
.end method

.method public native crypto_box_seal([B[BJ[B)I
.end method

.method public native crypto_box_seal_open([B[BJ[B[B)I
.end method

.method public native crypto_scalarmult_base([B[B)I
.end method

.method public native crypto_sign_detached([BLcom/sun/jna/Pointer;[BJ[B)I
.end method

.method public native crypto_sign_seed_keypair([B[B[B)I
.end method

.method public native crypto_sign_verify_detached([B[BJ[B)I
.end method

.method public onRegistered()V
    .locals 2

    invoke-virtual {p0}, Lcom/goterl/lazysodium/Sodium;->sodium_init()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sodium library could not be initialised properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native sodium_init()I
.end method
