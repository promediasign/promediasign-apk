.class public Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/ConversionHandler;


# static fields
.field static cacheMiss:Lorg/apache/velocity/util/introspection/Converter;

.field static standardConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/velocity/util/Pair<",
            "+",
            "Ljava/lang/Class;",
            "+",
            "Ljava/lang/Class;",
            ">;",
            "Lorg/apache/velocity/util/introspection/Converter;",
            ">;"
        }
    .end annotation
.end field

.field static toString:Lorg/apache/velocity/util/introspection/Converter;


# instance fields
.field converterCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/velocity/util/Pair<",
            "+",
            "Ljava/lang/Class;",
            "+",
            "Ljava/lang/Class;",
            ">;",
            "Lorg/apache/velocity/util/introspection/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$1;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$1;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->cacheMiss:Lorg/apache/velocity/util/introspection/Converter;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$2;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$2;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Byte;

    invoke-direct {v2, v3, v4}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v5, Ljava/lang/Short;

    invoke-direct {v2, v3, v5}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v6, Ljava/lang/Integer;

    invoke-direct {v2, v3, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v7, Ljava/lang/Long;

    invoke-direct {v2, v3, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v8, Ljava/lang/Float;

    invoke-direct {v2, v3, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v9, Ljava/lang/Double;

    invoke-direct {v2, v3, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v10, Ljava/lang/Number;

    invoke-direct {v2, v3, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v12}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    move-object/from16 v16, v15

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    move-object/from16 v17, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v5}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v12}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    invoke-direct {v2, v3, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$3;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$3;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    move-object/from16 v16, v15

    const-class v15, Ljava/lang/Character;

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    invoke-direct {v2, v11, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    move-object/from16 v17, v14

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v11, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$4;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$4;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    const-class v14, Ljava/lang/String;

    invoke-direct {v2, v11, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/Pair;

    invoke-direct {v2, v3, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 1
    invoke-static {v4, v5, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 2
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 3
    invoke-static {v4, v6, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 4
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 5
    invoke-static {v4, v7, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 6
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 7
    invoke-static {v4, v8, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 8
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 9
    invoke-static {v4, v9, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 10
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 11
    invoke-static {v4, v10, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 12
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 13
    invoke-static {v4, v12, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 14
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 15
    invoke-static {v4, v13, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 16
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    move-object/from16 v2, v17

    .line 17
    invoke-static {v4, v2, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 18
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    move-object/from16 v15, v19

    .line 19
    invoke-static {v4, v15, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 20
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    .line 21
    invoke-static {v4, v3, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 22
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    .line 23
    invoke-static {v11, v5, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 24
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 25
    invoke-static {v11, v6, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 26
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 27
    invoke-static {v11, v7, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 28
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 29
    invoke-static {v11, v8, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 30
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 31
    invoke-static {v11, v9, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 32
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 33
    invoke-static {v11, v10, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 34
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 35
    invoke-static {v11, v12, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 36
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 37
    invoke-static {v11, v13, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 38
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 39
    invoke-static {v11, v2, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 40
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    .line 41
    invoke-static {v11, v15, v1, v0}, Lorg/apache/ftpserver/main/a;->v(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$5;)V

    .line 42
    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    move-object/from16 v18, v12

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$6;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$6;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v4, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$7;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$7;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    invoke-direct {v12, v11, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$8;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$8;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v5, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v11, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$9;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$9;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$10;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$10;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v5}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$11;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$11;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v6, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v13, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$12;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$12;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v2, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v2, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v2, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v2, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v2, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$13;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$13;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v5}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$14;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$14;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v7, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v2, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$15;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$15;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v15, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v15, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v15, v3}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$16;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$16;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v5}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$17;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$17;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v8, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v15, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$18;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$18;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v9, v5}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v9, v6}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v9, v7}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v12, Lorg/apache/velocity/util/Pair;

    invoke-direct {v12, v9, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v9, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v9, v11}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v9, v13}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v9, v2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v9, v15}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v3, v10}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$19;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$19;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v9, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v8, Lorg/apache/velocity/util/Pair;

    invoke-direct {v8, v3, v14}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$20;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$20;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    move-object/from16 v8, v16

    invoke-direct {v3, v4, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    move-object/from16 v9, v17

    invoke-direct {v3, v4, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    move-object/from16 v4, v19

    invoke-direct {v3, v4, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v4, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$21;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$21;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v5, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v5, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v11, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v11, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$22;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$22;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v6, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v6, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v13, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v13, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$23;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$23;-><init>()V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v7, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v7, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v2, v8}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    new-instance v3, Lorg/apache/velocity/util/Pair;

    invoke-direct {v3, v2, v9}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$24;

    invoke-direct {v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$24;-><init>()V

    sput-object v0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->toString:Lorg/apache/velocity/util/introspection/Converter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->converterCacheMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addConverter(Ljava/lang/Class;Ljava/lang/Class;Lorg/apache/velocity/util/introspection/Converter;)V
    .locals 2

    new-instance v0, Lorg/apache/velocity/util/Pair;

    invoke-direct {v0, p1, p2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->converterCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/velocity/util/Pair;

    invoke-static {p1}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->converterCacheMap:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->getUnboxedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_1

    new-instance p1, Lorg/apache/velocity/util/Pair;

    invoke-direct {p1, v0, p2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->converterCacheMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public getNeededConverter(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/Converter;
    .locals 4

    new-instance v0, Lorg/apache/velocity/util/Pair;

    invoke-direct {v0, p1, p2}, Lorg/apache/velocity/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->standardConverterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/util/introspection/Converter;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->converterCacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/util/introspection/Converter;

    if-nez v1, :cond_3

    const-class v2, Ljava/lang/String;

    if-ne p1, v2, :cond_0

    sget-object p1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->toString:Lorg/apache/velocity/util/introspection/Converter;

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p2, v2, :cond_1

    new-instance p2, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$25;

    invoke-direct {p2, p0, p1}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl$25;-><init>(Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;Ljava/lang/Class;)V

    move-object v1, p2

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->converterCacheMap:Ljava/util/Map;

    if-nez v1, :cond_2

    sget-object p2, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->cacheMiss:Lorg/apache/velocity/util/introspection/Converter;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p1, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->cacheMiss:Lorg/apache/velocity/util/introspection/Converter;

    if-ne v1, p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    return-object v1
.end method

.method public isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 1

    if-eq p1, p2, :cond_3

    invoke-static {p1, p2, p3}, Lorg/apache/velocity/util/introspection/IntrospectionUtils;->isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->getNeededConverter(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/Converter;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/velocity/util/introspection/ConversionHandlerImpl;->isExplicitlyConvertible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result p1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
