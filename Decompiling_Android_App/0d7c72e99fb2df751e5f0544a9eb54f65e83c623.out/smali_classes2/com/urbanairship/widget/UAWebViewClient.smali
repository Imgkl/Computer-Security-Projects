.class public Lcom/urbanairship/widget/UAWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "UAWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/widget/UAWebViewClient$3;,
        Lcom/urbanairship/widget/UAWebViewClient$Credentials;
    }
.end annotation


# static fields
.field public static final CLOSE_COMMAND:Ljava/lang/String; = "close"

.field public static final RUN_ACTIONS_COMMAND:Ljava/lang/String; = "run-actions"

.field private static final RUN_ACTIONS_COMMAND_CALLBACK:Ljava/lang/String; = "android-run-action-cb"

.field public static final RUN_BASIC_ACTIONS_COMMAND:Ljava/lang/String; = "run-basic-actions"

.field public static final UA_ACTION_SCHEME:Ljava/lang/String; = "uairship"

.field private static dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;

.field private final actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

.field private authRequestCredentials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/widget/UAWebViewClient$Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRunRequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/widget/UAWebViewClient;-><init>(Lcom/urbanairship/actions/ActionRunRequestFactory;)V

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/actions/ActionRunRequestFactory;)V
    .locals 1
    .param p1, "actionRunRequestFactory"    # Lcom/urbanairship/actions/ActionRunRequestFactory;

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient;->authRequestCredentials:Ljava/util/Map;

    .line 149
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebViewClient;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/widget/UAWebViewClient;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/widget/UAWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/widget/UAWebViewClient;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/urbanairship/actions/ActionValue;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/widget/UAWebViewClient;->triggerCallback(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    return-void
.end method

.method private createGetter(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 525
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_UAirship.%s = function(){return %d;};"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createGetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 520
    if-nez p2, :cond_0

    const-string p2, "null"

    .line 521
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_UAirship.%s = function(){return %s;};"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :cond_0
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private decodeActionArguments(Landroid/net/Uri;Z)Ljava/util/Map;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "basicEncoding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 388
    invoke-static {p1}, Lcom/urbanairship/util/UriUtils;->getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v8

    .line 389
    .local v8, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v8, :cond_1

    move-object v3, v10

    .line 422
    :cond_0
    :goto_0
    return-object v3

    .line 393
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v3, "decodedActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/urbanairship/actions/ActionValue;>;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    .local v0, "actionName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, "decodedActionArguments":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/actions/ActionValue;>;"
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 399
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No arguments to decode for actionName: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    move-object v3, v10

    .line 400
    goto :goto_0

    .line 403
    :cond_2
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    .local v1, "arg":Ljava/lang/String;
    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v7

    .line 406
    .local v7, "jsonValue":Lcom/urbanairship/json/JsonValue;
    :goto_3
    new-instance v9, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v9, v7}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 407
    .end local v7    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    :catch_0
    move-exception v4

    .line 408
    .local v4, "e":Lcom/urbanairship/json/JsonException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid json. Unable to create action argument "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " with args: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v10

    .line 410
    goto/16 :goto_0

    .line 405
    .end local v4    # "e":Lcom/urbanairship/json/JsonException;
    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_1
    .catch Lcom/urbanairship/json/JsonException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_3

    .line 414
    .end local v1    # "arg":Ljava/lang/String;
    :cond_4
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 417
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v2    # "decodedActionArguments":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/actions/ActionValue;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 418
    const-string v9, "Error no action names are present in the actions key set"

    invoke-static {v9}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    move-object v3, v10

    .line 419
    goto/16 :goto_0
.end method

.method private getMessage(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 535
    instance-of v0, p1, Lcom/urbanairship/widget/RichPushMessageWebView;

    if-eqz v0, :cond_0

    .line 536
    check-cast p1, Lcom/urbanairship/widget/RichPushMessageWebView;

    .end local p1    # "webView":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/urbanairship/widget/RichPushMessageWebView;->getCurrentMessage()Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    .restart local p1    # "webView":Landroid/webkit/WebView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private injectJavascriptInterface(Landroid/webkit/WebView;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebViewClient;->getMessage(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v1

    .line 487
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    sget-object v3, Lcom/urbanairship/widget/UAWebViewClient;->dateFormatter:Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_0

    .line 488
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v3, Lcom/urbanairship/widget/UAWebViewClient;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 489
    sget-object v3, Lcom/urbanairship/widget/UAWebViewClient;->dateFormatter:Ljava/text/SimpleDateFormat;

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 497
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "var _UAirship = {};"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "getDeviceModel"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/urbanairship/widget/UAWebViewClient;->createGetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getMessageId"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/urbanairship/widget/UAWebViewClient;->createGetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getMessageTitle"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/urbanairship/widget/UAWebViewClient;->createGetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getMessageSentDate"

    if-eqz v1, :cond_3

    sget-object v3, Lcom/urbanairship/widget/UAWebViewClient;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessage;->getSentDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-direct {p0, v6, v3}, Lcom/urbanairship/widget/UAWebViewClient;->createGetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getMessageSentDateMS"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushMessage;->getSentDateMS()J

    move-result-wide v6

    :goto_3
    invoke-direct {p0, v5, v6, v7}, Lcom/urbanairship/widget/UAWebViewClient;->createGetter(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getUserId"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/urbanairship/widget/UAWebViewClient;->createGetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {}, Lcom/urbanairship/js/NativeBridge;->getJavaScriptSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "javaScript":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_5

    .line 513
    invoke-virtual {p1, v0, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 517
    :goto_4
    return-void

    .end local v0    # "javaScript":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 500
    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_2

    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 515
    .restart local v0    # "javaScript":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private interceptUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 200
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 242
    :goto_0
    return v2

    .line 204
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v7, "uairship"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/urbanairship/widget/UAWebViewClient;->isWhiteListed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v3

    .line 206
    goto :goto_0

    .line 209
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intercepting: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    const/4 v2, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    move v2, v3

    .line 242
    goto :goto_0

    .line 210
    :sswitch_0
    const-string v8, "run-basic-actions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v8, "run-actions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v5

    goto :goto_1

    :sswitch_2
    const-string v8, "android-run-action-cb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v4

    goto :goto_1

    :sswitch_3
    const-string v8, "close"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    goto :goto_1

    .line 212
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running run basic actions command for URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v1, v5}, Lcom/urbanairship/widget/UAWebViewClient;->decodeActionArguments(Landroid/net/Uri;Z)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/urbanairship/widget/UAWebViewClient;->runActions(Landroid/webkit/WebView;Ljava/util/Map;)V

    move v2, v5

    .line 214
    goto/16 :goto_0

    .line 217
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running run actions command for URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/widget/UAWebViewClient;->decodeActionArguments(Landroid/net/Uri;Z)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/urbanairship/widget/UAWebViewClient;->runActions(Landroid/webkit/WebView;Ljava/util/Map;)V

    move v2, v5

    .line 219
    goto/16 :goto_0

    .line 222
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running run actions command with callback for URL: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Args: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", Callback: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 227
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/urbanairship/widget/UAWebViewClient;->runAction(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v5

    .line 231
    goto/16 :goto_0

    .line 229
    :cond_5
    const-string v2, "Unable to run action, invalid number of arguments."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    .end local v0    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running close command for URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/urbanairship/widget/UAWebViewClient;->onClose(Landroid/webkit/WebView;)V

    move v2, v5

    .line 236
    goto/16 :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x59dad445 -> :sswitch_1
        -0xb4cb164 -> :sswitch_0
        0x5a5ddf8 -> :sswitch_3
        0x2ab967b6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isWhiteListed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getWhitelist()Lcom/urbanairship/js/Whitelist;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/js/Whitelist;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private runAction(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callbackKey"    # Ljava/lang/String;

    .prologue
    .line 295
    :try_start_0
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p3}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .local v0, "actionValue":Lcom/urbanairship/actions/ActionValue;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v3, "metadata":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebViewClient;->getMessage(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v2

    .line 305
    .local v2, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v2, :cond_0

    .line 306
    const-string v4, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/urbanairship/widget/UAWebViewClient;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-virtual {v4, p2}, Lcom/urbanairship/actions/ActionRunRequestFactory;->createActionRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/urbanairship/actions/ActionRunRequest;->setMetadata(Landroid/os/Bundle;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/urbanairship/actions/ActionRunRequest;->setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v4

    sget-object v5, Lcom/urbanairship/actions/Situation;->WEB_VIEW_INVOCATION:Lcom/urbanairship/actions/Situation;

    invoke-virtual {v4, v5}, Lcom/urbanairship/actions/ActionRunRequest;->setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v4

    new-instance v5, Lcom/urbanairship/widget/UAWebViewClient$2;

    invoke-direct {v5, p0, p2, p1, p4}, Lcom/urbanairship/widget/UAWebViewClient$2;-><init>(Lcom/urbanairship/widget/UAWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;)V

    .line 343
    .end local v0    # "actionValue":Lcom/urbanairship/actions/ActionValue;
    .end local v2    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v3    # "metadata":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Lcom/urbanairship/json/JsonException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse action argument value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    const-string v4, "Unable to decode arguments payload"

    new-instance v5, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v5}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    invoke-direct {p0, p1, v4, v5, p4}, Lcom/urbanairship/widget/UAWebViewClient;->triggerCallback(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runActions(Landroid/webkit/WebView;Ljava/util/Map;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/urbanairship/actions/ActionValue;>;>;"
    if-nez p2, :cond_1

    .line 281
    :cond_0
    return-void

    .line 257
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v5, "metadata":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebViewClient;->getMessage(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v4

    .line 259
    .local v4, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v4, :cond_2

    .line 260
    const-string v6, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    .local v0, "actionName":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/actions/ActionValue;

    .line 265
    .local v1, "arg":Lcom/urbanairship/actions/ActionValue;
    iget-object v6, p0, Lcom/urbanairship/widget/UAWebViewClient;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-virtual {v6, v0}, Lcom/urbanairship/actions/ActionRunRequestFactory;->createActionRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/urbanairship/actions/ActionRunRequest;->setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/urbanairship/actions/ActionRunRequest;->setMetadata(Landroid/os/Bundle;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    sget-object v7, Lcom/urbanairship/actions/Situation;->WEB_VIEW_INVOCATION:Lcom/urbanairship/actions/Situation;

    invoke-virtual {v6, v7}, Lcom/urbanairship/actions/ActionRunRequest;->setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v6

    new-instance v7, Lcom/urbanairship/widget/UAWebViewClient$1;

    invoke-direct {v7, p0}, Lcom/urbanairship/widget/UAWebViewClient$1;-><init>(Lcom/urbanairship/widget/UAWebViewClient;)V

    invoke-virtual {v6, v7}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;)V

    goto :goto_0
.end method

.method private triggerCallback(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V
    .locals 10
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "resultValue"    # Lcom/urbanairship/actions/ActionValue;
    .param p4, "callbackKey"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 356
    const-string v4, "\'%s\'"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p4, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "callbackString":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 361
    const-string v1, "null"

    .line 367
    .local v1, "errorString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3}, Lcom/urbanairship/actions/ActionValue;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "resultValueString":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "UAirship.finishAction(%s, %s, %s);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v3, v6, v9

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "finishAction":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 374
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 378
    :goto_1
    return-void

    .line 363
    .end local v1    # "errorString":Ljava/lang/String;
    .end local v2    # "finishAction":Ljava/lang/String;
    .end local v3    # "resultValueString":Ljava/lang/String;
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "new Error(%s)"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 376
    .restart local v2    # "finishAction":Ljava/lang/String;
    .restart local v3    # "resultValueString":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method addAuthRequestCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "expectedAuthHost"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient;->authRequestCredentials:Ljava/util/Map;

    new-instance v1, Lcom/urbanairship/widget/UAWebViewClient$Credentials;

    invoke-direct {v1, p2, p3}, Lcom/urbanairship/widget/UAWebViewClient$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method

.method public onClose(Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v3, 0x4

    .line 171
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 172
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 173
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/UAWebViewClient;->interceptUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 190
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-direct {p0, p2}, Lcom/urbanairship/widget/UAWebViewClient;->isWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAWebViewClient - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a white listed URL. Urban Airship Javascript interface will not be accessible."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    const-string v0, "Loading UrbanAirship Javascript interface."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/urbanairship/widget/UAWebViewClient;->injectJavascriptInterface(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebViewClient;->authRequestCredentials:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/widget/UAWebViewClient$Credentials;

    .line 454
    .local v0, "credentials":Lcom/urbanairship/widget/UAWebViewClient$Credentials;
    if-eqz v0, :cond_0

    .line 455
    iget-object v1, v0, Lcom/urbanairship/widget/UAWebViewClient$Credentials;->username:Ljava/lang/String;

    iget-object v2, v0, Lcom/urbanairship/widget/UAWebViewClient$Credentials;->password:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method removeAuthRequestCredentials(Ljava/lang/String;)V
    .locals 1
    .param p1, "expectedAuthHost"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient;->authRequestCredentials:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method public setActionCompletionCallback(Lcom/urbanairship/actions/ActionCompletionCallback;)V
    .locals 1
    .param p1, "actionCompletionCallback"    # Lcom/urbanairship/actions/ActionCompletionCallback;

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;

    .line 161
    monitor-exit p0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/UAWebViewClient;->interceptUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
