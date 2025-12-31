.class public Lio/milton/http/http11/SimpleContentGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/ContentGenerator;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private conflict:Ljava/lang/String;

.field private loginExternal:Ljava/lang/String;

.field private methodNotAllowed:Ljava/lang/String;

.field private methodNotImplemented:Ljava/lang/String;

.field private notFound:Ljava/lang/String;

.field private serverError:Ljava/lang/String;

.field private unauthorised:Ljava/lang/String;

.field private unknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/SimpleContentGenerator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/SimpleContentGenerator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<html><body><h1>Method Not Allowed</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->methodNotAllowed:Ljava/lang/String;

    const-string v0, "<html><body><h1>${url} Not Found (404)</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->notFound:Ljava/lang/String;

    const-string v0, "<html><body><h1>Method Not Implemented</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->methodNotImplemented:Ljava/lang/String;

    const-string v0, "<html><body><h1>Conflict</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->conflict:Ljava/lang/String;

    const-string v0, "<html><body><h1>Server Error</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->serverError:Ljava/lang/String;

    const-string v0, "<html><body><h1>Not authorised</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->unauthorised:Ljava/lang/String;

    const-string v0, "<html><body><h1>Not authorised</h1><p>Please login with: ${externalProviders}</p></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->loginExternal:Ljava/lang/String;

    const-string v0, "<html><body><h1>Unknown error</h1></body></html>"

    iput-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->unknown:Ljava/lang/String;

    return-void
.end method

.method private applyTemplates(Ljava/lang/String;Lio/milton/http/Request;)Ljava/lang/String;
    .locals 1

    const-string v0, "${url}"

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generate(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/Response$Status;)V
    .locals 0

    sget-object p1, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getUnknown()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getUnauthorised()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getServerError()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getConflict()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getMethodNotImplemented()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getNotFound()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lio/milton/http/http11/SimpleContentGenerator;->getMethodNotAllowed()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lio/milton/http/http11/SimpleContentGenerator;->applyTemplates(Ljava/lang/String;Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/milton/http/http11/SimpleContentGenerator$1;

    invoke-direct {p2, p0, p1}, Lio/milton/http/http11/SimpleContentGenerator$1;-><init>(Lio/milton/http/http11/SimpleContentGenerator;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lio/milton/http/Response;->setEntity(Lio/milton/http/Response$Entity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConflict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->conflict:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodNotAllowed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->methodNotAllowed:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodNotImplemented()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->methodNotImplemented:Ljava/lang/String;

    return-object v0
.end method

.method public getNotFound()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->notFound:Ljava/lang/String;

    return-object v0
.end method

.method public getServerError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->serverError:Ljava/lang/String;

    return-object v0
.end method

.method public getUnauthorised()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->unauthorised:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/SimpleContentGenerator;->unknown:Ljava/lang/String;

    return-object v0
.end method
