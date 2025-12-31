.class final Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    return-void
.end method
