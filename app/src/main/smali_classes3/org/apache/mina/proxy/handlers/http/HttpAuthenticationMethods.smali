.class public final enum Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

.field public static final enum NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v1, "NO_AUTH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-instance v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v4, "BASIC"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-instance v4, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v6, "NTLM"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-instance v6, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    const-string v8, "DIGEST"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    new-array v8, v9, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->$VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    return-void
.end method

.method public static getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/apache/mina/proxy/handlers/http/basic/HttpBasicAuthLogicHandler;

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/basic/HttpBasicAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_1

    new-instance p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object p0

    :cond_1
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_2

    new-instance p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object p0

    :cond_2
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget v0, v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    if-ne p0, v0, :cond_3

    new-instance p0, Lorg/apache/mina/proxy/handlers/http/basic/HttpNoAuthLogicHandler;

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/basic/HttpNoAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;
    .locals 1

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->$VALUES:[Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v0}, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    return v0
.end method

.method public getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->id:I

    invoke-static {v0, p1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object p1

    return-object p1
.end method
