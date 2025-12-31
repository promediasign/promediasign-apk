.class public Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
.super Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "alg"
    .end annotation
.end field

.field private critical:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "crit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jwk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jwk"
    .end annotation
.end field

.field private jwkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jku"
    .end annotation
.end field

.field private keyId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kid"
    .end annotation
.end field

.field private x509Certificates:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5c"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x509Thumbprint:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5t"
    .end annotation
.end field

.field private x509Url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getX509Certificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Certificates:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object p1

    return-object p1
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    return-object p0
.end method
