.class public Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method

.method private parseFtplets(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;
    .locals 3

    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseMapElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/springframework/beans/factory/support/ManagedMap;

    invoke-direct {v0}, Lorg/springframework/beans/factory/support/ManagedMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/ManagedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseListeners(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Lorg/springframework/beans/factory/support/ManagedMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/beans/factory/support/ManagedMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/w3c/dom/Element;

    .line 25
    .line 26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "nio-listener"

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v1, v3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const-string v3, "listener"

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-static {v1, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    const-string v3, "name"

    .line 64
    .line 65
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/springframework/beans/factory/support/ManagedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 74
    .line 75
    const-string p2, "Unknown listener element "

    .line 76
    .line 77
    invoke-static {p2, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    return-object v0
.end method

.method private parseMessageResource(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Lorg/apache/ftpserver/message/MessageResource;
    .locals 1

    new-instance p2, Lorg/apache/ftpserver/message/MessageResourceFactory;

    invoke-direct {p2}, Lorg/apache/ftpserver/message/MessageResourceFactory;-><init>()V

    const-string p3, "languages"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "[\\s,]+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/ftpserver/message/MessageResourceFactory;->setLanguages(Ljava/util/List;)V

    :cond_0
    const-string p3, "directory"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;->setCustomMessageDirectory(Ljava/io/File;)V

    :cond_1
    invoke-virtual {p2}, Lorg/apache/ftpserver/message/MessageResourceFactory;->createMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 6

    .line 1
    const-class v0, Lorg/apache/ftpserver/FtpServerFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_a

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lorg/w3c/dom/Element;

    .line 26
    .line 27
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "listeners"

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->parseListeners(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-lez v3, :cond_0

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v4, v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v4, "ftplets"

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->parseFtplets(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v4, "file-user-manager"

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const-string v5, "userManager"

    .line 73
    .line 74
    if-nez v4, :cond_9

    .line 75
    .line 76
    const-string v4, "db-user-manager"

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_3
    const-string v4, "user-manager"

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    :goto_2
    invoke-static {v2, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_3
    invoke-virtual {v0, v5, v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const-string v4, "native-filesystem"

    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const-string v5, "fileSystem"

    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v2, v4}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    const-string v4, "filesystem"

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const-string v4, "commands"

    .line 134
    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_7

    .line 140
    .line 141
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v3, v2, v4}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "commandFactory"

    .line 154
    .line 155
    :goto_4
    invoke-virtual {v0, v3, v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_7
    const-string v4, "messages"

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_8

    .line 167
    .line 168
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->parseMessageResource(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Lorg/apache/ftpserver/message/MessageResource;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const-string v3, "messageResource"

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_8
    new-instance p1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 176
    .line 177
    const-string p2, "Unknown configuration name: "

    .line 178
    .line 179
    invoke-static {p2, v3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-direct {p1, p2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_9
    :goto_5
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v3, v2, v4}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v0, v5, v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_a
    new-instance v1, Lorg/apache/ftpserver/ConnectionConfigFactory;

    .line 205
    .line 206
    invoke-direct {v1}, Lorg/apache/ftpserver/ConnectionConfigFactory;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v2, "max-logins"

    .line 210
    .line 211
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_b

    .line 220
    .line 221
    invoke-static {p1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxLogins(I)V

    .line 226
    .line 227
    .line 228
    :cond_b
    const-string v2, "max-threads"

    .line 229
    .line 230
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_c

    .line 239
    .line 240
    invoke-static {p1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxThreads(I)V

    .line 245
    .line 246
    .line 247
    :cond_c
    const-string v2, "max-anon-logins"

    .line 248
    .line 249
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_d

    .line 258
    .line 259
    invoke-static {p1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxAnonymousLogins(I)V

    .line 264
    .line 265
    .line 266
    :cond_d
    const-string v2, "anon-enabled"

    .line 267
    .line 268
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_e

    .line 277
    .line 278
    const/4 v3, 0x1

    .line 279
    invoke-static {p1, v2, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setAnonymousLoginEnabled(Z)V

    .line 284
    .line 285
    .line 286
    :cond_e
    const-string v2, "max-login-failures"

    .line 287
    .line 288
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_f

    .line 297
    .line 298
    invoke-static {p1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxLoginFailures(I)V

    .line 303
    .line 304
    .line 305
    :cond_f
    const-string v2, "login-failure-delay"

    .line 306
    .line 307
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_10

    .line 316
    .line 317
    invoke-static {p1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setLoginFailureDelay(I)V

    .line 322
    .line 323
    .line 324
    :cond_10
    const-string p1, "connectionConfig"

    .line 325
    .line 326
    invoke-virtual {v1}, Lorg/apache/ftpserver/ConnectionConfigFactory;->createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v0, p1, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v1, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    .line 346
    .line 347
    invoke-direct {v1, p1, v0}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p0, v1, p1}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-virtual {p1, v0}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    const-string p2, "createServer"

    .line 369
    .line 370
    invoke-virtual {p1, p2}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryMethodName(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-void
.end method

.method public getBeanClass(Lorg/w3c/dom/Element;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/ftpserver/FtpServer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
