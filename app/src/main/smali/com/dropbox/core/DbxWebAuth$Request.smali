.class public final Lcom/dropbox/core/DbxWebAuth$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final disableSignup:Ljava/lang/Boolean;

.field private final forceReapprove:Ljava/lang/Boolean;

.field private final includeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

.field private final redirectUri:Ljava/lang/String;

.field private final requireRole:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final sessionStore:Lcom/dropbox/core/DbxSessionStore;

.field private final state:Ljava/lang/String;

.field private final tokenAccessType:Lcom/dropbox/core/TokenAccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->redirectUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->state:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->requireRole:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->forceReapprove:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->disableSignup:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    iput-object p7, p0, Lcom/dropbox/core/DbxWebAuth$Request;->tokenAccessType:Lcom/dropbox/core/TokenAccessType;

    iput-object p8, p0, Lcom/dropbox/core/DbxWebAuth$Request;->scope:Ljava/lang/String;

    iput-object p9, p0, Lcom/dropbox/core/DbxWebAuth$Request;->includeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->redirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->requireRole:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->forceReapprove:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->disableSignup:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/TokenAccessType;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->tokenAccessType:Lcom/dropbox/core/TokenAccessType;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/IncludeGrantedScopes;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->includeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->sessionStore:Lcom/dropbox/core/DbxSessionStore;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->state:Ljava/lang/String;

    return-object p0
.end method

.method public static newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 2

    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method
