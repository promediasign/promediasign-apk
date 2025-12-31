.class public Lio/milton/event/PutEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final res:Lio/milton/resource/Resource;


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/PutEvent;->res:Lio/milton/resource/Resource;

    return-void
.end method


# virtual methods
.method public getResource()Lio/milton/resource/Resource;
    .locals 1

    iget-object v0, p0, Lio/milton/event/PutEvent;->res:Lio/milton/resource/Resource;

    return-object v0
.end method
