.class public Lio/milton/http/webdav/PropFindHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;
.implements Lio/milton/http/Handler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final permissionService:Lio/milton/property/PropertyAuthoriser;

.field private final propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

.field private final requestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/PropFindHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/PropFindHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/PropFindRequestFieldParser;Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/webdav/PropFindPropertyBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/property/DefaultPropertyAuthoriser;

    invoke-direct {v0}, Lio/milton/property/DefaultPropertyAuthoriser;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropFindHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    iput-object p1, p0, Lio/milton/http/webdav/PropFindHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iput-object p2, p0, Lio/milton/http/webdav/PropFindHandler;->requestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    if-eqz p2, :cond_0

    iput-object p3, p0, Lio/milton/http/webdav/PropFindHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p4, p0, Lio/milton/http/webdav/PropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Must provide a PropFindRequestFieldParser"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAllFields(Lio/milton/http/webdav/PropertiesRequest;Lio/milton/resource/PropFindableResource;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/webdav/PropertiesRequest;",
            "Lio/milton/resource/PropFindableResource;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lio/milton/http/webdav/PropertiesRequest;->isAllProp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lio/milton/http/webdav/PropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    invoke-interface {p1, p2}, Lio/milton/http/webdav/PropFindPropertyBuilder;->findAllProps(Lio/milton/resource/PropFindableResource;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/webdav/PropertiesRequest;->getNames()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PROPFIND:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/PropFindableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropFindHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 10

    .line 1
    sget-object p1, Lio/milton/http/webdav/PropFindHandler;->log:Lorg/slf4j/Logger;

    .line 2
    .line 3
    const-string v0, "processExistingResource"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v0, p4

    .line 9
    check-cast v0, Lio/milton/resource/PropFindableResource;

    .line 10
    .line 11
    invoke-interface {p2}, Lio/milton/http/Request;->getDepthHeader()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-object v2, Lio/milton/http/Response$Status;->SC_MULTI_STATUS:Lio/milton/http/Response$Status;

    .line 16
    .line 17
    invoke-interface {p3, v2}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "text/xml; charset=UTF-8"

    .line 21
    .line 22
    invoke-interface {p3, v2}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lio/milton/http/webdav/PropFindHandler;->requestFieldParser:Lio/milton/http/webdav/PropFindRequestFieldParser;

    .line 26
    .line 27
    invoke-interface {p2}, Lio/milton/http/Request;->getInputStream()Ljava/io/InputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v2, v3}, Lio/milton/http/webdav/PropFindRequestFieldParser;->getRequestedFields(Ljava/io/InputStream;)Lio/milton/http/webdav/PropertiesRequest;

    .line 32
    .line 33
    .line 34
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    invoke-interface {p2}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-direct {p0, v2, v0}, Lio/milton/http/webdav/PropFindHandler;->getAllFields(Lio/milton/http/webdav/PropertiesRequest;Lio/milton/resource/PropFindableResource;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget-object v4, p0, Lio/milton/http/webdav/PropFindHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    .line 44
    .line 45
    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget-object v7, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->READ:Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    .line 50
    .line 51
    move-object v5, p2

    .line 52
    move-object v9, p4

    .line 53
    invoke-interface/range {v4 .. v9}, Lio/milton/property/PropertyAuthoriser;->checkPermissions(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/property/PropertyAuthoriser$PropertyPermission;Ljava/util/Set;Lio/milton/resource/Resource;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-lez v4, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "permissionService denied access: "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lio/milton/http/webdav/PropFindHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object p1, p0, Lio/milton/http/webdav/PropFindHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    .line 99
    .line 100
    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    if-eqz p4, :cond_3

    .line 109
    .line 110
    const-string p4, "Listing requested propfind properties ---"

    .line 111
    .line 112
    invoke-interface {p1, p4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Lio/milton/http/webdav/PropertiesRequest;->getProperties()Ljava/util/Collection;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    if-eqz p4, :cond_2

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    check-cast p4, Lio/milton/http/webdav/PropertiesRequest$Property;

    .line 134
    .line 135
    sget-object v4, Lio/milton/http/webdav/PropFindHandler;->log:Lorg/slf4j/Logger;

    .line 136
    .line 137
    invoke-virtual {p4}, Lio/milton/http/webdav/PropertiesRequest$Property;->getName()Ljavax/xml/namespace/QName;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    invoke-virtual {p4}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    invoke-interface {v4, p4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    sget-object p1, Lio/milton/http/webdav/PropFindHandler;->log:Lorg/slf4j/Logger;

    .line 150
    .line 151
    const-string p4, "---"

    .line 152
    .line 153
    invoke-interface {p1, p4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    :try_start_1
    iget-object p1, p0, Lio/milton/http/webdav/PropFindHandler;->propertyBuilder:Lio/milton/http/webdav/PropFindPropertyBuilder;

    .line 157
    .line 158
    invoke-interface {p1, v0, v1, v2, v3}, Lio/milton/http/webdav/PropFindPropertyBuilder;->buildProperties(Lio/milton/resource/PropFindableResource;ILio/milton/http/webdav/PropertiesRequest;Ljava/lang/String;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    sget-object p4, Lio/milton/http/webdav/PropFindHandler;->log:Lorg/slf4j/Logger;

    .line 163
    .line 164
    invoke-interface {p4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_4

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v2, "responses: "

    .line 173
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {p4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-object p4, p0, Lio/milton/http/webdav/PropFindHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    .line 192
    .line 193
    invoke-interface {p4, p1, p3, p2, v0}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPropFind(Ljava/util/List;Lio/milton/http/Response;Lio/milton/http/Request;Lio/milton/resource/Resource;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    return-void

    .line 197
    :catch_0
    move-exception p1

    .line 198
    sget-object p3, Lio/milton/http/webdav/PropFindHandler;->log:Lorg/slf4j/Logger;

    .line 199
    .line 200
    new-instance p4, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Exception parsing url. request class: "

    .line 203
    .line 204
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p2, ". Please check the client application is usign percentage encoding (see http://en.wikipedia.org/wiki/Percent-encoding)"

    .line 215
    .line 216
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-interface {p3, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance p2, Ljava/lang/RuntimeException;

    .line 227
    .line 228
    const-string p3, "Exception parsing url, indicating the requested URL is not correctly encoded. Please check the client application. Requested url is: "

    .line 229
    .line 230
    invoke-static {p3, v3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    throw p2

    .line 238
    :catch_1
    move-exception p1

    .line 239
    new-instance p2, Ljava/lang/RuntimeException;

    .line 240
    .line 241
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    throw p2
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 10

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lio/milton/http/HttpManager;->onGet(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Ljava/util/Map;)V

    iget-object v1, p0, Lio/milton/http/webdav/PropFindHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-virtual/range {v1 .. v9}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;ZLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method
