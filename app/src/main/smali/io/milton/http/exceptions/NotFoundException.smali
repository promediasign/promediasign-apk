.class public Lio/milton/http/exceptions/NotFoundException;
.super Lio/milton/http/exceptions/MiltonException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/milton/http/exceptions/MiltonException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/milton/http/exceptions/NotFoundException;->reason:Ljava/lang/String;

    return-void
.end method
