.class public Lio/milton/http/ProtocolHandlers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/milton/http/HttpExtension;",
        ">;"
    }
.end annotation


# instance fields
.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/HttpExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/HttpExtension;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/ProtocolHandlers;->handlers:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/ProtocolHandlers;->handlerHelper:Lio/milton/http/HandlerHelper;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/milton/http/HttpExtension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/ProtocolHandlers;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
