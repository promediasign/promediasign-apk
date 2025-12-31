.class public Lio/milton/http/http11/Http11Protocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/HttpExtension;


# instance fields
.field private customPostHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final handlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/ResourceHandlerHelper;ZLio/milton/http/http11/MatchHelper;Lio/milton/http/http11/PartialGetHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/milton/http/http11/Http11Protocol;->handlers:Ljava/util/Set;

    iput-object p2, p0, Lio/milton/http/http11/Http11Protocol;->handlerHelper:Lio/milton/http/HandlerHelper;

    new-instance v1, Lio/milton/http/http11/OptionsHandler;

    invoke-direct {v1, p1, p3, p2, p4}, Lio/milton/http/http11/OptionsHandler;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/HandlerHelper;Z)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p4, Lio/milton/http/http11/GetHandler;

    invoke-direct {p4, p1, p3, p5, p6}, Lio/milton/http/http11/GetHandler;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/http11/MatchHelper;Lio/milton/http/http11/PartialGetHelper;)V

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p4, Lio/milton/http/http11/PostHandler;

    invoke-direct {p4, p1, p3}, Lio/milton/http/http11/PostHandler;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;)V

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p4, Lio/milton/http/http11/DeleteHandler;

    invoke-direct {p4, p1, p3, p2}, Lio/milton/http/http11/DeleteHandler;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/HandlerHelper;)V

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p3, Lio/milton/http/http11/PutHelper;

    invoke-direct {p3}, Lio/milton/http/http11/PutHelper;-><init>()V

    new-instance p4, Lio/milton/http/http11/PutHandler;

    invoke-direct {p4, p1, p2, p3, p5}, Lio/milton/http/http11/PutHandler;-><init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/http11/PutHelper;Lio/milton/http/http11/MatchHelper;)V

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCustomPostHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/http11/Http11Protocol;->customPostHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getHandlers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/http11/Http11Protocol;->handlers:Ljava/util/Set;

    return-object v0
.end method
