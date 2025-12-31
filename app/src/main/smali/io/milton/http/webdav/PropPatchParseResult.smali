.class public Lio/milton/http/webdav/PropPatchParseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fieldsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsToSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropPatchParseResult;->fieldsToSet:Ljava/util/Map;

    iput-object p2, p0, Lio/milton/http/webdav/PropPatchParseResult;->fieldsToRemove:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getFieldsToRemove()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchParseResult;->fieldsToRemove:Ljava/util/Set;

    return-object v0
.end method

.method public getFieldsToSet()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchParseResult;->fieldsToSet:Ljava/util/Map;

    return-object v0
.end method
