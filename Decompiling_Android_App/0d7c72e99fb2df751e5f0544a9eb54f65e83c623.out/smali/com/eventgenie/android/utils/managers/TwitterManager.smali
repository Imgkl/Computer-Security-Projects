.class public Lcom/eventgenie/android/utils/managers/TwitterManager;
.super Ljava/lang/Object;
.source "TwitterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;
    }
.end annotation


# static fields
.field public static final BASE_TWITTER_INTENT_SCHEMA:Ljava/lang/String; = "twitter://"

.field public static final BASE_TWITTER_URL:Ljava/lang/String; = "http://www.twitter.com/"

.field private static final HTTP_TIMEOUT:I = 0x1388

.field private static final TWITTER_BEARER_PREFIX:Ljava/lang/String; = "twitter_bearer_"

.field private static final TWITTER_URL_OAUTH_TOKEN:Ljava/lang/String; = "https://api.twitter.com/oauth2/token"

.field private static final TWITTER_USER_TOKEN_PREFIX:Ljava/lang/String; = "twitter_user_token_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReset:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTwitter:Ltwitter4j/Twitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    return-void
.end method

.method private getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getPageContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "targetURL"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, "bodyParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v7, 0x0

    .line 269
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-direct {v1}, Lcom/github/ignition/support/http/IgnitedHttp;-><init>()V

    .line 272
    .local v1, "http":Lcom/github/ignition/support/http/IgnitedHttp;
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->setConnectionTimeout(I)V

    .line 275
    const-string v8, "post"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 276
    if-eqz p2, :cond_0

    .line 277
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v8, p2, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v8}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v4

    .line 285
    .local v4, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 287
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v1    # "http":Lcom/github/ignition/support/http/IgnitedHttp;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    .end local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ TWITTERMANAGER: Error when connecting to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 302
    const-string v8, "^ TWITTERMANAGER:"

    invoke-static {v8, v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .line 279
    .restart local v1    # "http":Lcom/github/ignition/support/http/IgnitedHttp;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/github/ignition/support/http/IgnitedHttp;->post(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v4

    .restart local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    goto :goto_0

    .line 282
    .end local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :cond_1
    invoke-virtual {v1, p0}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v4

    .restart local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    goto :goto_0

    .line 291
    :cond_2
    invoke-interface {v4}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v5

    .line 292
    .local v5, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v5}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v6

    .line 294
    .local v6, "responseCode":I
    invoke-static {v4, v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 295
    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 297
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ TWITTERMANAGER: Error when connecting to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 298
    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_2
.end method

.method private getTokenBearer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 115
    .local v8, "prefs":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "twitter_bearer_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "bearerTokenKey":Ljava/lang/String;
    const-string v14, ""

    invoke-interface {v8, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "tmp":Ljava/lang/String;
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 120
    move-object v11, v10

    .line 159
    .local v11, "token":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 122
    .end local v11    # "token":Ljava/lang/String;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "urlEncodedKey":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "urlEncodedSecret":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Basic "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "authHeader":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v7, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "grant_type"

    const-string v16, "client_credentials"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "Authorization"

    invoke-direct {v14, v15, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "Content-Type"

    const-string v16, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v14, "https://api.twitter.com/oauth2/token"

    const-string v15, "POST"

    invoke-static {v14, v7, v3, v15}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getPageContent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "bodyText":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 140
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v9, "result":Lorg/json/JSONObject;
    const-string v14, "access_token"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 143
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 144
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 145
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "result":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    move-object v11, v10

    .restart local v11    # "token":Ljava/lang/String;
    goto/16 :goto_0

    .line 148
    .end local v11    # "token":Ljava/lang/String;
    .restart local v9    # "result":Lorg/json/JSONObject;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ TWITTERMANAGER: BEARER Error: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    .end local v9    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 152
    .local v5, "e":Lorg/json/JSONException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "^ TWITTERMANAGER: Error while parsing bearer object response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getTokenUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "twitter_user_token_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWebIntentForFavourite(J)Ljava/lang/String;
    .locals 2
    .param p0, "tweetId"    # J

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://www.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "intent/like?tweet_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWebIntentForReply(J)Ljava/lang/String;
    .locals 2
    .param p0, "tweetId"    # J

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://www.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, "intent/tweet?in_reply_to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWebIntentForRetweet(J)Ljava/lang/String;
    .locals 2
    .param p0, "tweetId"    # J

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://www.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, "intent/retweet?tweet_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWebIntentForTweetView(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "tweetId"    # J

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://www.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "/status/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWebIntentForUserView(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "user"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://www.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent/user?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWebIntentToTweet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "http://www.twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "intent/tweet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "?text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getRateLimit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getTwitterObject()Ltwitter4j/Twitter;

    move-result-object v0

    .line 94
    .local v0, "twitter":Ltwitter4j/Twitter;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getRateLimit(Ltwitter4j/Twitter;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRateLimit(Ltwitter4j/Twitter;)Ljava/lang/String;
    .locals 4
    .param p1, "twitter"    # Ltwitter4j/Twitter;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "res":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/Twitter;->getRateLimitStatus()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ TWITTERMANAGER: Current rate limit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ltwitter4j/TwitterException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ TWITTERMANAGER: Error while fetching the rate limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getTwitterObject()Ltwitter4j/Twitter;
    .locals 8

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mTwitter:Ltwitter4j/Twitter;

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mTwitter:Ltwitter4j/Twitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return-object v6

    .line 173
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getTwitterKey()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getTwitterSecret()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "secret":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    new-instance v1, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v1}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 180
    .local v1, "cb":Ltwitter4j/conf/ConfigurationBuilder;
    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getTokenUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "user_auth_token":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    const-string v6, "^ TWITTERMANAGER: Using User Authentication"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 184
    const/4 v4, 0x0

    .line 203
    .end local v1    # "cb":Ltwitter4j/conf/ConfigurationBuilder;
    .end local v5    # "user_auth_token":Ljava/lang/String;
    .local v4, "twitter":Ltwitter4j/Twitter;
    :goto_1
    iput-object v4, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mTwitter:Ltwitter4j/Twitter;

    .line 205
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mTwitter:Ltwitter4j/Twitter;

    goto :goto_0

    .line 186
    .end local v4    # "twitter":Ltwitter4j/Twitter;
    .restart local v1    # "cb":Ltwitter4j/conf/ConfigurationBuilder;
    .restart local v5    # "user_auth_token":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getTokenBearer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "bearer_token":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ltwitter4j/conf/ConfigurationBuilder;->setDebugEnabled(Z)Ltwitter4j/conf/ConfigurationBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ltwitter4j/conf/ConfigurationBuilder;->setUseSSL(Z)Ltwitter4j/conf/ConfigurationBuilder;

    .line 192
    const-string v6, "^ TWITTERMANAGER: Using Bearer Auth."

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 193
    new-instance v6, Ltwitter4j/TwitterFactory;

    invoke-virtual {v1}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    new-instance v7, Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;

    invoke-direct {v7, v0}, Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v4

    .restart local v4    # "twitter":Ltwitter4j/Twitter;
    goto :goto_1

    .line 195
    .end local v4    # "twitter":Ltwitter4j/Twitter;
    :cond_2
    const-string v6, "^ TWITTERMANAGER: No Authentication methods available."

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v4, 0x0

    .restart local v4    # "twitter":Ltwitter4j/Twitter;
    goto :goto_1

    .line 200
    .end local v0    # "bearer_token":Ljava/lang/String;
    .end local v1    # "cb":Ltwitter4j/conf/ConfigurationBuilder;
    .end local v4    # "twitter":Ltwitter4j/Twitter;
    .end local v5    # "user_auth_token":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "twitter":Ltwitter4j/Twitter;
    goto :goto_1

    .line 169
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "secret":Ljava/lang/String;
    .end local v4    # "twitter":Ltwitter4j/Twitter;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/TwitterManager;->mReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
