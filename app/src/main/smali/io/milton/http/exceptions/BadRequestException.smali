.class public Lio/milton/http/exceptions/BadRequestException;
.super Lio/milton/http/exceptions/MiltonException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/milton/http/exceptions/MiltonException;-><init>(Lio/milton/resource/Resource;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/exceptions/BadRequestException;->reason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/milton/resource/Resource;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/milton/http/exceptions/MiltonException;-><init>(Lio/milton/resource/Resource;)V

    iput-object p2, p0, Lio/milton/http/exceptions/BadRequestException;->reason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/milton/http/exceptions/MiltonException;-><init>()V

    iput-object p1, p0, Lio/milton/http/exceptions/BadRequestException;->reason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lio/milton/http/exceptions/MiltonException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/milton/http/exceptions/BadRequestException;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/exceptions/BadRequestException;->reason:Ljava/lang/String;

    return-object v0
.end method
