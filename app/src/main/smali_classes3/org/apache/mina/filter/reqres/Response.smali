.class public Lorg/apache/mina/filter/reqres/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final message:Ljava/lang/Object;

.field private final request:Lorg/apache/mina/filter/reqres/Request;

.field private final type:Lorg/apache/mina/filter/reqres/ResponseType;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/Object;Lorg/apache/mina/filter/reqres/ResponseType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/Response;->request:Lorg/apache/mina/filter/reqres/Request;

    iput-object p3, p0, Lorg/apache/mina/filter/reqres/Response;->type:Lorg/apache/mina/filter/reqres/ResponseType;

    iput-object p2, p0, Lorg/apache/mina/filter/reqres/Response;->message:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/apache/mina/filter/reqres/Response;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/apache/mina/filter/reqres/Response;

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/reqres/Request;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Response;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()Lorg/apache/mina/filter/reqres/Request;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Response;->request:Lorg/apache/mina/filter/reqres/Request;

    return-object v0
.end method

.method public getType()Lorg/apache/mina/filter/reqres/ResponseType;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/Response;->type:Lorg/apache/mina/filter/reqres/ResponseType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response: { requestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getRequest()Lorg/apache/mina/filter/reqres/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/filter/reqres/Request;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getType()Lorg/apache/mina/filter/reqres/ResponseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/filter/reqres/Response;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
