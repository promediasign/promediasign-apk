.class public abstract Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;

.field protected static final ROOT_ERROR:Ljava/lang/String; = "_ROOT_"

.field private static velocity:Lorg/apache/velocity/app/VelocityEngine;


# instance fields
.field private final errors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final method:Lfi/iki/elonen/NanoHTTPD$Method;

.field protected final model:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected redirectTo:Ljava/lang/String;

.field protected resultMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lorg/apache/velocity/app/VelocityEngine;

    invoke-direct {v0}, Lorg/apache/velocity/app/VelocityEngine;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->velocity:Lorg/apache/velocity/app/VelocityEngine;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "resource.loader"

    const-string v2, "classpath"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-class v1, Lorg/apache/velocity/runtime/resource/loader/ClasspathResourceLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classpath.resource.loader.class"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "classpath.resource.loader.cache"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "classpath.resource.loader.modificationCheckInterval "

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lsk/mimac/slideshow/http/page/velocity/LocalizationDirective;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lsk/mimac/slideshow/http/page/velocity/EscapeDirective;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userdirective"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "runtime.introspector.uberspect"

    const-string v2, "org.apache.velocity.util.introspection.UberspectPublicFields, org.apache.velocity.util.introspection.UberspectImpl"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "space.gobbling"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->velocity:Lorg/apache/velocity/app/VelocityEngine;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/app/VelocityEngine;->init(Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->errors:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    iput-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->files:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->errors:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    iput-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    iput-object p3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->files:Ljava/util/Map;

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method public static getVelocity()Lorg/apache/velocity/app/VelocityEngine;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->velocity:Lorg/apache/velocity/app/VelocityEngine;

    return-object v0
.end method


# virtual methods
.method public addError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->errors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getPage()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->process()V

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->redirectTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redirect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->redirectTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/velocity/VelocityContext;

    invoke-direct {v0}, Lorg/apache/velocity/VelocityContext;-><init>()V

    const-string v1, "errors"

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->errors:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "params"

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resultMessage"

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/apache/velocity/Template;->merge(Lorg/apache/velocity/context/Context;Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplate()Lorg/apache/velocity/Template;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->velocity:Lorg/apache/velocity/app/VelocityEngine;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/templates/web-interface/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getTemplateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".vm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/velocity/app/VelocityEngine;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTemplateName()Ljava/lang/String;
.end method

.method public hasAnyErrors()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->errors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isGet()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPost()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract process()V
.end method
