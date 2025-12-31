.class final Lcom/fasterxml/aalto/in/NsBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final XMLNS_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

.field public static final XML_BINDING:Lcom/fasterxml/aalto/in/NsBinding;


# instance fields
.field public final mPrefix:Ljava/lang/String;

.field public mURI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/fasterxml/aalto/in/NsBinding;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/aalto/in/NsBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/aalto/in/NsBinding;->XML_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    new-instance v0, Lcom/fasterxml/aalto/in/NsBinding;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/aalto/in/NsBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/aalto/in/NsBinding;->XMLNS_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xml"

    if-eq p1, v0, :cond_0

    const-string v0, "xmlns"

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to create non-singleton binding for ns prefix \'"

    const-string v2, "\'"

    .line 1
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/aalto/in/NsBinding;->mPrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/aalto/in/NsBinding;->mURI:Ljava/lang/String;

    return-void
.end method

.method public static final createDefaultNs()Lcom/fasterxml/aalto/in/NsBinding;
    .locals 2

    new-instance v0, Lcom/fasterxml/aalto/in/NsBinding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/aalto/in/NsBinding;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isImmutable()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/in/NsBinding;->XML_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/aalto/in/NsBinding;->XMLNS_BINDING:Lcom/fasterxml/aalto/in/NsBinding;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
