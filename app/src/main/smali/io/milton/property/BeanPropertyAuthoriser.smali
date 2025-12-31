.class public Lio/milton/property/BeanPropertyAuthoriser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/property/PropertyAuthoriser;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final beanPropertySource:Lio/milton/property/BeanPropertySource;

.field private final wrapped:Lio/milton/property/PropertyAuthoriser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/property/BeanPropertyAuthoriser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/property/BeanPropertyAuthoriser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/property/BeanPropertySource;Lio/milton/property/PropertyAuthoriser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/property/BeanPropertyAuthoriser;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    iput-object p2, p0, Lio/milton/property/BeanPropertyAuthoriser;->wrapped:Lio/milton/property/PropertyAuthoriser;

    return-void
.end method


# virtual methods
.method public checkPermissions(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/property/PropertyAuthoriser$PropertyPermission;Ljava/util/Set;Lio/milton/resource/Resource;)Ljava/util/Set;
    .locals 0
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

    sget-object p1, Lio/milton/property/BeanPropertyAuthoriser;->log:Lorg/slf4j/Logger;

    const-string p2, "checkPermissions"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/property/BeanPropertyAuthoriser;->beanPropertySource:Lio/milton/property/BeanPropertySource;

    invoke-virtual {p1, p5}, Lio/milton/property/BeanPropertySource;->getAnnotation(Lio/milton/resource/Resource;)Lio/milton/annotations/BeanPropertyResource;

    const/4 p1, 0x0

    return-object p1
.end method
