.class abstract Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropPatchSaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateHandler"
.end annotation


# static fields
.field public static Ignore:Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler$1;

    invoke-direct {v0}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler$1;-><init>()V

    sput-object v0, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;->Ignore:Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/milton/http/webdav/PropPatchSaxHandler$2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endSelf(Ljavax/xml/namespace/QName;)V
    .locals 0

    return-void
.end method

.method public abstract startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
.end method
