.class public Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final description:Ljava/lang/String;

.field public final digestValue:[B

.field public final hashAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;


# direct methods
.method public constructor <init>([BLorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->digestValue:[B

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->hashAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/DigestInfo;->description:Ljava/lang/String;

    return-void
.end method
