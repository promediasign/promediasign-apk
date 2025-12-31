.class public Lio/milton/event/AccessedEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/event/Event;


# instance fields
.field private final res:Lio/milton/resource/Resource;

.field private returnRedirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/event/AccessedEvent;->res:Lio/milton/resource/Resource;

    return-void
.end method


# virtual methods
.method public getReturnRedirectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/event/AccessedEvent;->returnRedirectUrl:Ljava/lang/String;

    return-object v0
.end method
