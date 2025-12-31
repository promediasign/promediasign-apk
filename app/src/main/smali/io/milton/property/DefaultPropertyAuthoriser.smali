.class public Lio/milton/property/DefaultPropertyAuthoriser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/property/PropertyAuthoriser;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/property/DefaultPropertyAuthoriser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/property/DefaultPropertyAuthoriser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermissions(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/property/PropertyAuthoriser$PropertyPermission;Ljava/util/Set;Lio/milton/resource/Resource;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Request$Method;",
            "Lio/milton/property/PropertyAuthoriser$PropertyPermission;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/Set<",
            "Lio/milton/property/PropertyAuthoriser$CheckResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object p3

    invoke-interface {p1}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v0

    invoke-interface {p5, p1, p3, v0}, Lio/milton/resource/Resource;->authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lio/milton/property/DefaultPropertyAuthoriser;->log:Lorg/slf4j/Logger;

    const-string p2, "checkPermissions: ok"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lio/milton/property/DefaultPropertyAuthoriser;->log:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "checkPermissions: property authorisation failed because user does not have permission for method: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/xml/namespace/QName;

    new-instance p4, Lio/milton/property/PropertyAuthoriser$CheckResult;

    sget-object v0, Lio/milton/http/Response$Status;->SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

    const-string v1, "Not authorised"

    invoke-direct {p4, p3, v0, v1, p5}, Lio/milton/property/PropertyAuthoriser$CheckResult;-><init>(Ljavax/xml/namespace/QName;Lio/milton/http/Response$Status;Ljava/lang/String;Lio/milton/resource/Resource;)V

    invoke-virtual {p1, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method
