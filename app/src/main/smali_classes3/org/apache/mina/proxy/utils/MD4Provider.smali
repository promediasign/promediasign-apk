.class public Lorg/apache/mina/proxy/utils/MD4Provider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field public static final INFO:Ljava/lang/String; = "MINA MD4 Provider v1.0"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "MINA"

.field public static final VERSION:D = 1.0

.field private static final serialVersionUID:J = -0x1670165fcc8dec90L


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "MINA MD4 Provider v1.0"

    const-string v3, "MINA"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-class v0, Lorg/apache/mina/proxy/utils/MD4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageDigest.MD4"

    invoke-virtual {p0, v1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
