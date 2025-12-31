.class public Lio/milton/http/HrefStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final href:Ljava/lang/String;

.field public final status:Lio/milton/http/Response$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/milton/http/Response$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/HrefStatus;->href:Ljava/lang/String;

    iput-object p2, p0, Lio/milton/http/HrefStatus;->status:Lio/milton/http/Response$Status;

    return-void
.end method
