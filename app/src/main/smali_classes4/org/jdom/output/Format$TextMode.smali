.class public Lorg/jdom/output/Format$TextMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/output/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextMode"
.end annotation


# static fields
.field public static final NORMALIZE:Lorg/jdom/output/Format$TextMode;

.field public static final PRESERVE:Lorg/jdom/output/Format$TextMode;

.field public static final TRIM:Lorg/jdom/output/Format$TextMode;

.field public static final TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jdom/output/Format$TextMode;

    const-string v1, "PRESERVE"

    invoke-direct {v0, v1}, Lorg/jdom/output/Format$TextMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/output/Format$TextMode;->PRESERVE:Lorg/jdom/output/Format$TextMode;

    new-instance v0, Lorg/jdom/output/Format$TextMode;

    const-string v1, "TRIM"

    invoke-direct {v0, v1}, Lorg/jdom/output/Format$TextMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    new-instance v0, Lorg/jdom/output/Format$TextMode;

    const-string v1, "NORMALIZE"

    invoke-direct {v0, v1}, Lorg/jdom/output/Format$TextMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    new-instance v0, Lorg/jdom/output/Format$TextMode;

    const-string v1, "TRIM_FULL_WHITE"

    invoke-direct {v0, v1}, Lorg/jdom/output/Format$TextMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/output/Format$TextMode;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/Format$TextMode;->name:Ljava/lang/String;

    return-object v0
.end method
