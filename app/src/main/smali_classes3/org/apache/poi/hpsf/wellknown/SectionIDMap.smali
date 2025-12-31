.class public Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

.field private static final DOC_SUMMARY_INFORMATION:Lorg/apache/poi/hpsf/ClassID;

.field public static final SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

.field public static final UNDEFINED:Ljava/lang/String; = "[undefined]"

.field private static final USER_DEFINED_PROPERTIES:Lorg/apache/poi/hpsf/ClassID;

.field private static defaultMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hpsf/ClassID;",
            "Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{F29F85E0-4FF9-1068-AB91-08002B27B3D9}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{D5CDD502-2E9C-101B-9397-08002B2CF9AE}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOC_SUMMARY_INFORMATION:Lorg/apache/poi/hpsf/ClassID;

    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->USER_DEFINED_PROPERTIES:Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/poi/hpsf/ClassID;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
    .locals 3

    sget-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;-><init>()V

    return-object v0
.end method

.method public static getPIDString(Lorg/apache/poi/hpsf/ClassID;J)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->get(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p0

    const-string v0, "[undefined]"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public get(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->get(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put(Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put(Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p1

    return-object p1
.end method
