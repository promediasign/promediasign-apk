.class public abstract Lcom/dropbox/core/v2/DbxClientV2Base;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private final account:Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

.field private final auth:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

.field private final check:Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

.field private final cloudDocs:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

.field private final contacts:Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

.field private final fileProperties:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

.field private final fileRequests:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

.field private final files:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final paper:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field private final sharing:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field private final users:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    new-instance v0, Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/account/DbxUserAccountRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->account:Lcom/dropbox/core/v2/account/DbxUserAccountRequests;

    new-instance v0, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->auth:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    new-instance v0, Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/check/DbxUserCheckRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->check:Lcom/dropbox/core/v2/check/DbxUserCheckRequests;

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->cloudDocs:Lcom/dropbox/core/v2/clouddocs/DbxUserCloudDocsRequests;

    new-instance v0, Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->contacts:Lcom/dropbox/core/v2/contacts/DbxUserContactsRequests;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->fileProperties:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    new-instance v0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->fileRequests:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    new-instance v0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->files:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    new-instance v0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->paper:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    new-instance v0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->sharing:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    new-instance v0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->users:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    return-void
.end method


# virtual methods
.method public files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->files:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    return-object v0
.end method
