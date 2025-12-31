.class public Lcom/dropbox/core/PathRootErrorException;
.super Lcom/dropbox/core/DbxException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final pathRootError:Lcom/dropbox/core/v2/common/PathRootError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRootError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/dropbox/core/PathRootErrorException;->pathRootError:Lcom/dropbox/core/v2/common/PathRootError;

    return-void
.end method
