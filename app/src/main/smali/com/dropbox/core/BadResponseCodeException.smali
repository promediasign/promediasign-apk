.class public Lcom/dropbox/core/BadResponseCodeException;
.super Lcom/dropbox/core/BadResponseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/dropbox/core/BadResponseCodeException;->statusCode:I

    return-void
.end method
