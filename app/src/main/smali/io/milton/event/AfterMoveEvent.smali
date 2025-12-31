.class public Lio/milton/event/AfterMoveEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final destCollection:Lio/milton/resource/CollectionResource;

.field private final newName:Ljava/lang/String;

.field private final res:Lio/milton/resource/Resource;


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;Lio/milton/resource/CollectionResource;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/AfterMoveEvent;->res:Lio/milton/resource/Resource;

    iput-object p2, p0, Lio/milton/event/AfterMoveEvent;->destCollection:Lio/milton/resource/CollectionResource;

    iput-object p3, p0, Lio/milton/event/AfterMoveEvent;->newName:Ljava/lang/String;

    return-void
.end method
