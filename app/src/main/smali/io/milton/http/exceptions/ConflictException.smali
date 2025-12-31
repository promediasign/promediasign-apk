.class public Lio/milton/http/exceptions/ConflictException;
.super Lio/milton/http/exceptions/MiltonException;
.source "SourceFile"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/milton/resource/Resource;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/milton/http/exceptions/MiltonException;-><init>(Lio/milton/resource/Resource;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conflict exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/exceptions/ConflictException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/exceptions/ConflictException;->message:Ljava/lang/String;

    return-object v0
.end method
