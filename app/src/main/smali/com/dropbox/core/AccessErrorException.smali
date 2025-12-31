.class public Lcom/dropbox/core/AccessErrorException;
.super Lcom/dropbox/core/DbxException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final accessError:Lcom/dropbox/core/v2/auth/AccessError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/auth/AccessError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/dropbox/core/AccessErrorException;->accessError:Lcom/dropbox/core/v2/auth/AccessError;

    return-void
.end method
