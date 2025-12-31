.class Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/EventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/draw/geom/PresetGeometries;->init(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/draw/geom/PresetGeometries;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/geom/PresetGeometries;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetGeometries$1;->this$0:Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result p1

    return p1
.end method
