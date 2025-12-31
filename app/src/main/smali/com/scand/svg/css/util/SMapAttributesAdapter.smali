.class public Lcom/scand/svg/css/util/SMapAttributesAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/css/util/SMap;


# instance fields
.field private attributes:Lorg/xml/sax/Attributes;


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/util/SMapAttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/util/SMapAttributesAdapter;->attributes:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
