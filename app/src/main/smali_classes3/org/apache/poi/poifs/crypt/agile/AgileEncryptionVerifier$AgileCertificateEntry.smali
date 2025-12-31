.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgileCertificateEntry"
.end annotation


# instance fields
.field certVerifier:[B

.field encryptedKey:[B

.field x509:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
