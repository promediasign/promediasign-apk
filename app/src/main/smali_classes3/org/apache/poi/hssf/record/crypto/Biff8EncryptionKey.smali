.class public final Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final _userPasswordTLS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUserPassword()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setCurrentUserPassword(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
