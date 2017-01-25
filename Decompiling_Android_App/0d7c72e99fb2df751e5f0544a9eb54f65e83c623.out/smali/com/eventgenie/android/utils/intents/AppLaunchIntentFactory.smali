.class Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;
.super Ljava/lang/Object;
.source "AppLaunchIntentFactory.java"


# static fields
.field private static final INTENT_EXTRA_APP_NOT_FOUND_MESSAGE:Ljava/lang/String; = "applaunch_notfoundmessage"

.field private static final INTENT_EXTRA_PACKAGENAME:Ljava/lang/String; = "applaunch_packagename"

.field private static final RESTRICTION_NAME_API:Ljava/lang/String; = "api"

.field private static final RESTRICTION_NAME_FEATURE:Ljava/lang/String; = "feature"

.field private static final RESTRICTION_VALUE_CAMERA:Ljava/lang/String; = "camera"

.field private static final RESTRICTION_VALUE_GPS:Ljava/lang/String; = "gps"

.field private static final RESTRICTION_VALUE_NFC:Ljava/lang/String; = "nfc"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_REQUIREMENT:Ljava/lang/String; = "requirement"

.field private static final TAG_TYPE:Ljava/lang/String; = "type"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAdditionalData(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 17
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "additionalData"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 166
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 167
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 168
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v15, Ljava/io/StringReader;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v15}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v12, "source":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 170
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Element;->normalize()V

    .line 176
    const-string v15, "extra"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 182
    .local v5, "extrasList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 183
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 184
    .local v11, "node":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 185
    .local v14, "valueList":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .line 186
    .local v7, "itemName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 187
    .local v9, "itemValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 189
    .local v8, "itemType":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v10, v15, :cond_3

    .line 190
    invoke-interface {v14, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 191
    .local v13, "value":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "name"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 192
    invoke-static {v13}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 189
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 193
    :cond_1
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "value"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 194
    invoke-static {v13}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 195
    :cond_2
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "type"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 196
    invoke-static {v13}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 200
    .end local v13    # "value":Lorg/w3c/dom/Node;
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v7, v9, v8}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->addExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "extrasList":Lorg/w3c/dom/NodeList;
    .end local v6    # "i":I
    .end local v7    # "itemName":Ljava/lang/String;
    .end local v8    # "itemType":Ljava/lang/String;
    .end local v9    # "itemValue":Ljava/lang/String;
    .end local v10    # "j":I
    .end local v11    # "node":Lorg/w3c/dom/Node;
    .end local v12    # "source":Lorg/xml/sax/InputSource;
    .end local v14    # "valueList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "^ APPLAUNCH: Pasing Exception = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    return-object p0
.end method

.method private static addExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ APPLAUNCH: Invalid Extra: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 220
    :cond_1
    :try_start_0
    const-string v1, "string"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ APPLAUNCH: Error adding Extra \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "long"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 226
    :cond_3
    const-string v1, "boolean"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "bool"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    :cond_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 229
    :cond_5
    const-string v1, "integer"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "int"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 230
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 232
    :cond_7
    const-string v1, "float"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 233
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 235
    :cond_8
    const-string v1, "double"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 236
    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 238
    :cond_9
    const-string v1, "short"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 239
    invoke-static {p2}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 241
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ Skipping unknown type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' / \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static canUseThis(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "restrictions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v7

    .line 250
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    if-lt v9, v7, :cond_0

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 254
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 256
    .local v6, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_2

    .line 257
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 258
    .local v5, "restrictionValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ APPLAUNCH: Checking Requirement = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 260
    const-string v9, "api"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 261
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 263
    .local v0, "api":I
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v0, :cond_3

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ APPLAUNCH: UNABLE TO USE APP: Required API="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", Device API="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 265
    goto/16 :goto_0

    .line 268
    .end local v0    # "api":I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ APPLAUNCH: Invalid required API="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ignoring..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :cond_5
    const-string v9, "feature"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 272
    const-string v9, "nfc"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 273
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isNfcPresent()Z

    move-result v9

    if-nez v9, :cond_3

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ APPLAUNCH: UNABLE TO USE APP: Missing feature: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 276
    goto/16 :goto_0

    .line 279
    :cond_6
    const-string v9, "gps"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 280
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isGpsPresent()Z

    move-result v9

    if-nez v9, :cond_3

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ APPLAUNCH: UNABLE TO USE APP: Missing feature: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 283
    goto/16 :goto_0

    .line 286
    :cond_7
    const-string v9, "camera"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 287
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isBackCameraPresent()Z

    move-result v9

    if-nez v9, :cond_3

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ APPLAUNCH: UNABLE TO USE APP: Missing feature: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 290
    goto/16 :goto_0

    .line 294
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ APPLAUNCH: UNABLE TO USE APP: Missing feature: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 296
    goto/16 :goto_0
.end method

.method private static getRequirements(Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .param p0, "additionalData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v10, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 313
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 314
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 315
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v15, Ljava/io/StringReader;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v15}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 316
    .local v12, "source":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 317
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Element;->normalize()V

    .line 322
    const-string v15, "requirement"

    invoke-interface {v2, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 328
    .local v9, "restrictionList":Lorg/w3c/dom/NodeList;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "^ APPLAUNCH: Number of Requirements = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 330
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v4, v15, :cond_5

    .line 331
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 332
    .local v8, "node":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 333
    .local v14, "valueList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .line 334
    .local v5, "itemName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 336
    .local v6, "itemValue":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v7, v15, :cond_2

    .line 337
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 338
    .local v13, "value":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "name"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 339
    invoke-static {v13}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 336
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 340
    :cond_1
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "value"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 341
    invoke-static {v13}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 345
    .end local v13    # "value":Lorg/w3c/dom/Node;
    :cond_2
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 346
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "^ APPLAUNCH: Adding Requirement = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " / "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 347
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 349
    .local v11, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 350
    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 352
    .restart local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    new-instance v11, Ljava/util/HashSet;

    .end local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 353
    .restart local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 358
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "i":I
    .end local v5    # "itemName":Ljava/lang/String;
    .end local v6    # "itemValue":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v9    # "restrictionList":Lorg/w3c/dom/NodeList;
    .end local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "source":Lorg/xml/sax/InputSource;
    .end local v14    # "valueList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "^ APPLAUNCH: Pasing Exception = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    return-object v10
.end method

.method private static getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 369
    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 378
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 380
    .end local v1    # "c":C
    :goto_1
    return v4

    .line 377
    .restart local v1    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "c":C
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method protected static openAppLaunchWidget(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieMobileModule;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 386
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "applaunch_packagename"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "applaunch_notfoundmessage"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "notFoundMessage":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    const/4 v1, 0x1

    .line 400
    .local v1, "exists":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 402
    new-instance v2, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;-><init>()V

    .line 403
    .local v2, "factory":Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;
    invoke-virtual {v2, p0, p2}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 422
    .end local v2    # "factory":Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;
    :goto_1
    return-void

    .line 394
    .end local v1    # "exists":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "exists":Z
    goto :goto_0

    .line 396
    .end local v1    # "exists":Z
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "exists":Z
    goto :goto_0

    .line 406
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    if-nez v4, :cond_2

    const-string v4, ""

    .line 408
    :cond_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    new-instance v8, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$2;

    invoke-direct {v8}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$2;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v8, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;

    invoke-direct {v8, p0, v5}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method


# virtual methods
.method protected getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    .prologue
    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    invoke-direct {v6, p1}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    .line 115
    .local v6, "replacer":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getAndroidAdditionalData()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "additionalData":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getAndroidIntentAction()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "intentAction":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getAndroidIntentType()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "intentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getAndroidIntentData()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "intentData":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    invoke-static {v0}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->getRequirements(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 123
    .local v7, "restrictions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {p1, v7}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->canUseThis(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 124
    const/4 v8, 0x0

    .line 158
    .end local v7    # "restrictions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_0
    return-object v8

    .line 128
    :cond_0
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ APPLAUNCH: Getting Launch Intent for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 148
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->addAdditionalData(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 155
    :cond_3
    const-string v8, "applaunch_packagename"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v8, "applaunch_notfoundmessage"

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getAndroidAppNotFoundMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    new-instance v8, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    invoke-direct {v8, v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_4
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_5
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 137
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_6
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    const-string v8, "://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 142
    invoke-virtual {v6, v3}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method
