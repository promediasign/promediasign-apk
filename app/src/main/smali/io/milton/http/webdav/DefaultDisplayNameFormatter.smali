.class public Lio/milton/http/webdav/DefaultDisplayNameFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/DisplayNameFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatDisplayName(Lio/milton/resource/PropFindableResource;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
