.class public Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    return-void
.end method
