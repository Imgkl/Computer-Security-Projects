.class public final Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "AppLaunchConfig.java"


# static fields
.field public static final INFO_PAGE_PAYLOAD_BASE_PATH:Ljava/lang/String; = "/payload/applaunch/android"

.field private static final SLASH:Ljava/lang/String; = "/"

.field private static final TAG_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field private static final TAG_INTENT_DATA:Ljava/lang/String; = "intent_data"

.field private static final TAG_INTENT_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT_TYPE:Ljava/lang/String; = "intent_type"

.field private static final TAG_NOT_FOUND_MESSAGE:Ljava/lang/String; = "not_found"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private final mAndroidAdditionalData:Ljava/lang/String;

.field private final mAndroidAppNotFoundMessage:Ljava/lang/String;

.field private final mAndroidIntentAction:Ljava/lang/String;

.field private final mAndroidIntentData:Ljava/lang/String;

.field private final mAndroidIntentType:Ljava/lang/String;

.field private final mAndroidPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v7, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 78
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 79
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 80
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 81
    .local v4, "inputSrc":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 83
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v6

    .line 84
    .local v6, "xpath":Ljavax/xml/xpath/XPath;
    const-string v7, "/payload/applaunch/android"

    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v6, v7, v3, v8}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 86
    .local v0, "androidSection":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 87
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error Creating AppLaunchConfig: Number of Android Sections = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 90
    :cond_0
    const-string v7, "/payload/applaunch/android/package_name/value"

    invoke-static {v6, v3, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getStringFromExpression(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidPackageName:Ljava/lang/String;

    .line 92
    const-string v7, "/payload/applaunch/android/intent_action/value"

    invoke-static {v6, v3, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getStringFromExpression(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentAction:Ljava/lang/String;

    .line 94
    const-string v7, "/payload/applaunch/android/intent_type/value"

    invoke-static {v6, v3, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getStringFromExpression(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentType:Ljava/lang/String;

    .line 96
    const-string v7, "/payload/applaunch/android/intent_data/value"

    invoke-static {v6, v3, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getStringFromExpression(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentData:Ljava/lang/String;

    .line 98
    const-string v7, "/payload/applaunch/android/not_found/value"

    invoke-static {v6, v3, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->getStringFromExpression(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAppNotFoundMessage:Ljava/lang/String;

    .line 104
    const-string v7, "/payload/applaunch/android/extras"

    invoke-static {v6, v3, v7}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->generateExtrasString(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAdditionalData:Ljava/lang/String;

    .line 106
    invoke-static {p1, p0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getIntent(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    .line 108
    .local v5, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_2

    .line 109
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Was unable to create a valid AppLaunch Intent"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 111
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 114
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 117
    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "object":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_0
    const-string v0, "androidIntentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentType:Ljava/lang/String;

    .line 120
    const-string v0, "androidPackageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidPackageName:Ljava/lang/String;

    .line 121
    const-string v0, "androidIntentData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentData:Ljava/lang/String;

    .line 122
    const-string v0, "androidAdditionalData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAdditionalData:Ljava/lang/String;

    .line 123
    const-string v0, "androidAppNotFoundMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAppNotFoundMessage:Ljava/lang/String;

    .line 124
    const-string v0, "androidIntentAction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentAction:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static fromXmlPayloadInfopage(Landroid/content/Context;Ljava/lang/String;)Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 165
    :try_start_0
    new-instance v1, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;

    invoke-direct {v1, p0, p1}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ APPLAUNCH CONFIG: Error creating config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static generateExtrasString(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "expression"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<extras>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :try_start_0
    const-string v1, "requirement"

    invoke-static {p0, p1, p2, v1}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->xmlFyChildren(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "extra"

    invoke-static {p0, p1, p2, v1}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->xmlFyChildren(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    const-string v1, "</extras>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 181
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getStringFromExpression(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "expression"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p2, p1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    :goto_0
    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static safeTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 204
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static xmlFyChildren(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "xpath"    # Ljavax/xml/xpath/XPath;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p0, v9, p1, v10}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 211
    .local v5, "requirements":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 213
    .local v6, "requirementsLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 214
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 216
    .local v3, "n":Lorg/w3c/dom/Node;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 220
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 221
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "name":Ljava/lang/String;
    const-string v9, "#text"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 224
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t\t<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t</"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 234
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "j":I
    .end local v3    # "n":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public getAndroidAdditionalData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAdditionalData:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidAppNotFoundMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAppNotFoundMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLaunchConfig [mAndroidIntentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAndroidPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAndroidIntentData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAndroidAdditionalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAdditionalData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAndroidAppNotFoundMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidAppNotFoundMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAndroidIntentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;->mAndroidIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
