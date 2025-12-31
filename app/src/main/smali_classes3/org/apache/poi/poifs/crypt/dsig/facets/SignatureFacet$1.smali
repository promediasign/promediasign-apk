.class final Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bcProv:Ljava/security/Provider;

.field final synthetic val$digestMethod:Ljavax/xml/crypto/dsig/DigestMethod;

.field final synthetic val$reference:Ljavax/xml/crypto/dsig/Reference;


# direct methods
.method public constructor <init>(Ljavax/xml/crypto/dsig/DigestMethod;Ljava/security/Provider;Ljavax/xml/crypto/dsig/Reference;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$digestMethod:Ljavax/xml/crypto/dsig/DigestMethod;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$bcProv:Ljava/security/Provider;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$reference:Ljavax/xml/crypto/dsig/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "Workaround for a bug, needs access to private JDK members (may fail in Java 9): https://bugzilla.redhat.com/show_bug.cgi?id=1155012"
    .end annotation

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lorg/apache/jcp/xml/dsig/internal/dom/DOMDigestMethod;

    const-string v3, "getMessageDigestAlgorithm"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$digestMethod:Ljavax/xml/crypto/dsig/DigestMethod;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$bcProv:Ljava/security/Provider;

    invoke-static {v2, v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v2

    const-class v3, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    const-string v4, "md"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$reference:Ljavax/xml/crypto/dsig/Reference;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Can\'t overwrite message digest (workaround for https://bugzilla.redhat.com/show_bug.cgi?id=1155012)"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v2, v4, v0

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method
