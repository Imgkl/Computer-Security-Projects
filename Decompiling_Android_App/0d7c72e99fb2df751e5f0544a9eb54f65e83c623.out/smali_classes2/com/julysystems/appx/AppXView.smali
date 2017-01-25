.class public Lcom/julysystems/appx/AppXView;
.super Landroid/widget/LinearLayout;
.source "AppXView.java"

# interfaces
.implements Lcom/julysystems/appx/AppXDataRequestListener;
.implements Lcom/julysystems/appx/AppXRegistrationListner;
.implements Lcom/julysystems/appx/AppXViewUpdateListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_VIEW"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appXTag:Ljava/lang/String;

.field protected appxViewCounter:I

.field private context:Landroid/content/Context;

.field private mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

.field private mainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->activity:Landroid/app/Activity;

    .line 32
    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->appXTag:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXViewListner;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mAppXViewListner"    # Lcom/julysystems/appx/AppXViewListner;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->activity:Landroid/app/Activity;

    .line 32
    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->appXTag:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    .line 42
    iput-object p3, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    .line 43
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iput-object p1, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/julysystems/appx/AppXView;->appXTag:Ljava/lang/String;

    .line 46
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->activity:Landroid/app/Activity;

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/julysystems/appx/AppXUtils;->initConstants(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {p1, p2, p0, p0}, Lcom/julysystems/appx/AppXUtils;->loadView(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {p0}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "APPX_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APPX Not Supported for the version ::::: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static enableDebugLog(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 220
    sput-boolean p0, Lcom/julysystems/appx/AppX;->enableLogs:Z

    .line 221
    return-void
.end method

.method private getChildViewData(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 15
    .param p1, "customViewElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "customViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/ArrayList;

    move-result-object v10

    .line 165
    .local v10, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 189
    .end local v10    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :goto_1
    return-object p2

    .line 165
    .restart local v10    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 166
    .local v7, "childeNode":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "nodeName":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v6, "childViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 169
    .local v4, "childAttributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    .line 170
    .local v12, "numChildAttrs":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-lt v9, v12, :cond_3

    .line 176
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "childNodeText":Ljava/lang/String;
    invoke-static {v7}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 178
    if-eqz v5, :cond_2

    .line 179
    const-string v14, "nodeText"

    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-lez v14, :cond_0

    .line 182
    move-object/from16 v0, p2

    invoke-direct {p0, v7, v0}, Lcom/julysystems/appx/AppXView;->getChildViewData(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v4    # "childAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "childNodeText":Ljava/lang/String;
    .end local v6    # "childViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "childeNode":Lorg/w3c/dom/Element;
    .end local v9    # "i":I
    .end local v10    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v12    # "numChildAttrs":I
    :catch_0
    move-exception v8

    .line 187
    .local v8, "e":Ljava/lang/Exception;
    const-string v13, "AppX View CallBack CustomView Map"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "childAttributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v6    # "childViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "childeNode":Lorg/w3c/dom/Element;
    .restart local v9    # "i":I
    .restart local v10    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v12    # "numChildAttrs":I
    :cond_3
    :try_start_1
    invoke-interface {v4, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    .line 172
    .local v1, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "attrName":Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "attrValue":Ljava/lang/String;
    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private getViewData(Lorg/w3c/dom/Element;)Ljava/util/HashMap;
    .locals 12
    .param p1, "customViewElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v4, "customViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 114
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    .line 115
    .local v8, "numAttrs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_1

    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "nodeText":Ljava/lang/String;
    invoke-static {p1}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 124
    if-eqz v7, :cond_0

    .line 125
    const-string v9, "nodeText"

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/julysystems/appx/AppXView;->getChildViewData(Lorg/w3c/dom/Element;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    .line 131
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "i":I
    .end local v7    # "nodeText":Ljava/lang/String;
    .end local v8    # "numAttrs":I
    :goto_1
    return-object v4

    .line 116
    .restart local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v6    # "i":I
    .restart local v8    # "numAttrs":I
    :cond_1
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 117
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "attrName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "attrValue":Ljava/lang/String;
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v9, "APPX_VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found attribute: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "i":I
    .end local v8    # "numAttrs":I
    :catch_0
    move-exception v5

    .line 129
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "CallBack CustomView Map"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getViewDataJsonObject(Lorg/w3c/dom/Element;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "customViewElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "xmlJsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXView;->getViewData(Lorg/w3c/dom/Element;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "xmlJsonObject":Lorg/json/JSONObject;
    .local v2, "xmlJsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 159
    .end local v2    # "xmlJsonObject":Lorg/json/JSONObject;
    .restart local v1    # "xmlJsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppXView CallBack CustomView Map"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getViewDataString(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 8
    .param p1, "customViewElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 135
    const-string v4, ""

    .line 137
    .local v4, "xmlString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 138
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    const-string v5, "indent"

    const-string v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v1, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 141
    .local v1, "result":Ljavax/xml/transform/stream/StreamResult;
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 142
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 144
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    const-string v5, "APPX_VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "xmlString is ::::: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    return-object v4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AppXView CallBack CustomView Map"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showAppXView()V
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXView;->addView(Landroid/view/View;)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDisplayHint(I)V
    .locals 3
    .param p1, "hint"    # I

    .prologue
    .line 194
    const-string v0, "APPX_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayHint "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-nez p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 197
    :cond_0
    return-void
.end method

.method public onRegistrationSuccess()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/julysystems/appx/AppXView;->appXTag:Ljava/lang/String;

    invoke-static {v0, v1, p0, p0}, Lcom/julysystems/appx/AppXUtils;->loadView(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 227
    return-void
.end method

.method public onRequestComplete(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Z)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p3, "isRefreshRequest"    # Z

    .prologue
    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 82
    .local v7, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    .line 84
    :cond_0
    if-eqz p3, :cond_1

    .line 85
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 87
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    invoke-interface {v0, p0}, Lcom/julysystems/appx/AppXViewListner;->onFinishLoading(Landroid/view/View;)V

    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/julysystems/appx/AppXView;->showAppXView()V

    .line 108
    return-void

    .line 87
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 88
    .local v2, "viewNode":Lorg/w3c/dom/Element;
    const-string v0, "name"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "attributeName":Ljava/lang/String;
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v1, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v8

    .line 90
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_6

    .line 91
    instance-of v0, v8, Lcom/julysystems/appx/AppXWebView;

    if-eqz v0, :cond_5

    .line 92
    iget v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    const-string v0, "APPX_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Added View is ::::: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    .line 99
    invoke-direct {p0, v2}, Lcom/julysystems/appx/AppXView;->getViewDataString(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {v0, v6, v1}, Lcom/julysystems/appx/AppXViewListner;->onReceiveCustomView(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    .line 101
    invoke-direct {p0, v2}, Lcom/julysystems/appx/AppXView;->getViewDataJsonObject(Lorg/w3c/dom/Element;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    invoke-interface {v0, v6, v1}, Lcom/julysystems/appx/AppXViewListner;->onReceiveCustomView(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onRequestFailure()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    iget-object v1, p0, Lcom/julysystems/appx/AppXView;->appXTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AppXView Request Failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/julysystems/appx/AppXViewListner;->onFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onViewFailedToLoad()V
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    .line 238
    invoke-direct {p0}, Lcom/julysystems/appx/AppXView;->showAppXView()V

    .line 239
    return-void
.end method

.method public onViewFinishedLoading()V
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXView;->appxViewCounter:I

    .line 232
    invoke-direct {p0}, Lcom/julysystems/appx/AppXView;->showAppXView()V

    .line 233
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string v0, "APPX_VIEW"

    const-string v1, "onWindowFocusChanged. Has focus"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "APPX_VIEW"

    const-string v1, "onWindowFocusChanged. Does not have focus"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 211
    const-string v0, "APPX_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-nez p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 214
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 216
    :cond_0
    return-void
.end method

.method public refresh(Z)V
    .locals 3
    .param p1, "ignoreCache"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/julysystems/appx/AppXView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/julysystems/appx/AppXView;->appXTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, p1, v2}, Lcom/julysystems/appx/AppXUtils;->loadContent(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;ZZ)V

    .line 72
    return-void
.end method

.method public setAppXViewListner(Lcom/julysystems/appx/AppXViewListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/julysystems/appx/AppXViewListner;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/julysystems/appx/AppXView;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    .line 61
    return-void
.end method
