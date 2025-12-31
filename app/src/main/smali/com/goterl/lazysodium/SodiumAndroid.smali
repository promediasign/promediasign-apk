.class public Lcom/goterl/lazysodium/SodiumAndroid;
.super Lcom/goterl/lazysodium/Sodium;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "sodium"

    invoke-direct {p0, v0}, Lcom/goterl/lazysodium/SodiumAndroid;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/goterl/lazysodium/Sodium;->onRegistered()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/goterl/lazysodium/Sodium;-><init>()V

    const-class v0, Lcom/goterl/lazysodium/Sodium;

    invoke-static {v0, p1}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lcom/goterl/lazysodium/SodiumAndroid;

    invoke-static {v0, p1}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/goterl/lazysodium/Sodium;->onRegistered()V

    return-void
.end method
