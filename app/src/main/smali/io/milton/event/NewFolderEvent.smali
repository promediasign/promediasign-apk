.class public Lio/milton/event/NewFolderEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final collectionResource:Lio/milton/resource/CollectionResource;


# direct methods
.method public constructor <init>(Lio/milton/resource/CollectionResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/NewFolderEvent;->collectionResource:Lio/milton/resource/CollectionResource;

    return-void
.end method
