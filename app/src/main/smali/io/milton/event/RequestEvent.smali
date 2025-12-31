.class public Lio/milton/event/RequestEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final request:Lio/milton/http/Request;


# direct methods
.method public constructor <init>(Lio/milton/http/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/RequestEvent;->request:Lio/milton/http/Request;

    return-void
.end method
