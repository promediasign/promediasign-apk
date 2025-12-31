.class public Lio/milton/event/PropPatchEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final res:Lio/milton/resource/Resource;

.field private final resp:Lio/milton/http/webdav/PropFindResponse;


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;Lio/milton/http/webdav/PropFindResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/PropPatchEvent;->res:Lio/milton/resource/Resource;

    iput-object p2, p0, Lio/milton/event/PropPatchEvent;->resp:Lio/milton/http/webdav/PropFindResponse;

    return-void
.end method
