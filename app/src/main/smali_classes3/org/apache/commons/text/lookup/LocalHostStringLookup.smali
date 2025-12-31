.class final Lorg/apache/commons/text/lookup/LocalHostStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lorg/apache/commons/text/lookup/LocalHostStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/LocalHostStringLookup;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/LocalHostStringLookup;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/LocalHostStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/LocalHostStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    return-void
.end method
