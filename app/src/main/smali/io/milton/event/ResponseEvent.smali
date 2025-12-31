.class public Lio/milton/event/ResponseEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final duration:J

.field private final request:Lio/milton/http/Request;

.field private final response:Lio/milton/http/Response;


# direct methods
.method public constructor <init>(Lio/milton/http/Request;Lio/milton/http/Response;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/ResponseEvent;->request:Lio/milton/http/Request;

    iput-object p2, p0, Lio/milton/event/ResponseEvent;->response:Lio/milton/http/Response;

    iput-wide p3, p0, Lio/milton/event/ResponseEvent;->duration:J

    return-void
.end method
