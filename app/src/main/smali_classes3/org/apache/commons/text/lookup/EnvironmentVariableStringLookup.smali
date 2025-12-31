.class final Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    return-void
.end method
