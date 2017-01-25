.class final Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;
.super Ljava/lang/Object;
.source "InfoPageHelper.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertListToArray(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 71
    .local v3, "ret":[J
    array-length v0, v3

    .line 73
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v3
.end method

.method protected static getArrayListOfIds(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 85
    .local v0, "arraySize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 86
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 87
    .local v3, "o":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 88
    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 89
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "id":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "o":Lorg/json/JSONObject;
    :cond_1
    return-object v1
.end method

.method protected static getArrayOfInfoPageIds(Lorg/json/JSONArray;)[J
    .locals 1
    .param p0, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->getArrayListOfIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->convertListToArray(Ljava/util/List;)[J

    move-result-object v0

    goto :goto_0
.end method

.method protected static getIdOfChildEntity(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    if-nez p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-wide v2

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    .local v0, "tmp":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "id"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected static getXmlPayloadIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v6

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 118
    .local v1, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ INFO: getXmlPayloadIntent() no infopage found! id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x0

    .line 146
    .local v2, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 147
    return-object v2

    .line 122
    .end local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_0
    const-string/jumbo v6, "type"

    invoke-interface {v1, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v6, "xmlpayload"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    const-string v6, "html"

    invoke-interface {v1, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "payload":Ljava/lang/String;
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-static {p0, p1, v3}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->parseXmlPayload(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;)Z

    move-result v4

    .line 128
    .local v4, "res":Z
    if-eqz v4, :cond_1

    .line 129
    new-instance v2, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/eventgenie/android/activities/infopages/InfoPageActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Intent;)V

    .line 130
    .restart local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "entity_id"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 132
    const-string v6, "infopage_type"

    const-string/jumbo v7, "xmlpayload"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 135
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 138
    .end local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v4    # "res":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 141
    .end local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v3    # "payload":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0
.end method

.method private static parseXmlPayload(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 156
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->validateAppLaunchPayload(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "res":Z
    goto :goto_0

    .line 157
    .end local v1    # "res":Z
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private static validateAppLaunchPayload(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 167
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 168
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 169
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 170
    .local v5, "inputSrc":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 172
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    .line 173
    .local v6, "xpath":Ljavax/xml/xpath/XPath;
    const-string v8, "/payload/applaunch/android"

    sget-object v9, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v6, v8, v3, v9}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 175
    .local v0, "androidSection":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v7, :cond_0

    .line 182
    .end local v0    # "androidSection":Lorg/w3c/dom/NodeList;
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "inputSrc":Lorg/xml/sax/InputSource;
    .end local v6    # "xpath":Ljavax/xml/xpath/XPath;
    :goto_0
    return v7

    .line 178
    :catch_0
    move-exception v4

    .line 179
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ VALIDATEINFOAPPLAUNCH: Could not create AppLaunch config "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 182
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method
