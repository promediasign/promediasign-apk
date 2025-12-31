.class Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertiesPair"
.end annotation


# instance fields
.field public customProperties:Ljava/util/Properties;

.field public defaultProperties:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/ftpserver/message/impl/DefaultMessageResource$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;-><init>()V

    return-void
.end method
