.class public Lio/milton/http/exceptions/NotAuthorizedException;
.super Lio/milton/http/exceptions/MiltonException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/milton/http/exceptions/MiltonException;-><init>(Lio/milton/resource/Resource;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/milton/resource/Resource;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/milton/http/exceptions/MiltonException;-><init>(Ljava/lang/String;Lio/milton/resource/Resource;)V

    return-void
.end method
