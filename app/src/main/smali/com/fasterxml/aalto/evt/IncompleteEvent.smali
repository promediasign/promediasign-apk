.class public Lcom/fasterxml/aalto/evt/IncompleteEvent;
.super Lorg/codehaus/stax2/ri/evt/BaseEventImpl;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/fasterxml/aalto/evt/IncompleteEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/evt/IncompleteEvent;

    invoke-direct {v0}, Lcom/fasterxml/aalto/evt/IncompleteEvent;-><init>()V

    sput-object v0, Lcom/fasterxml/aalto/evt/IncompleteEvent;->INSTANCE:Lcom/fasterxml/aalto/evt/IncompleteEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/aalto/impl/LocationImpl;->getEmptyLocation()Lcom/fasterxml/aalto/impl/LocationImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/stax2/ri/evt/BaseEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-void
.end method

.method public static instance()Lcom/fasterxml/aalto/evt/IncompleteEvent;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/evt/IncompleteEvent;->INSTANCE:Lcom/fasterxml/aalto/evt/IncompleteEvent;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEventType()I
    .locals 1

    const/16 v0, 0x101

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0

    return-void
.end method

.method public writeUsing(Lorg/codehaus/stax2/XMLStreamWriter2;)V
    .locals 0

    return-void
.end method
