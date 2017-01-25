.class public Lcom/eventgenie/android/utils/social/youtube/YouTube;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;,
        Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;,
        Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;,
        Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;
    }
.end annotation


# static fields
.field private static final CHANNEL_LOOKUP_URL:Ljava/lang/String; = "https://www.googleapis.com/youtube/v3/channels?part=id&key=%s&forUsername=%s"

.field private static final RESPONSE_PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final RESPONSE_PROPERTY_PUBLISHED_AT:Ljava/lang/String; = "publishedAt"

.field private static final RESPONSE_PROPERTY_TITLE:Ljava/lang/String; = "title"

.field private static final RESPONSE_PROPERTY_VIDEO_ID:Ljava/lang/String; = "videoId"

.field private static final SEARCH_LIST_URL:Ljava/lang/String; = "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&key=%s&maxResults=%s%s%s%s"

.field private static final VIDEO_LOOKUP_URL:Ljava/lang/String; = "https://www.googleapis.com/youtube/v3/videos?part=contentDetails%%2Cstatistics%%2Csnippet&key=%s&id=%s"

.field private static final VIDEO_WATCH_URL:Ljava/lang/String; = "https://www.youtube.com/watch?v=%s"


# instance fields
.field private mApiKey:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mHttpClient:Lcom/github/ignition/support/http/IgnitedHttp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/ignition/support/http/IgnitedHttp;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "httpClient"    # Lcom/github/ignition/support/http/IgnitedHttp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mAppContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mHttpClient:Lcom/github/ignition/support/http/IgnitedHttp;

    .line 92
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->parseVideoResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->parseChannelResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->parseSearchResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v0

    return-object v0
.end method

.method private doSearch(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 11
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "perPage"    # I
    .param p4, "pageToken"    # Ljava/lang/String;
    .param p5, "forceCache"    # Z

    .prologue
    .line 180
    if-eqz p5, :cond_0

    const/4 v6, 0x1

    .line 183
    .local v6, "useCache":Z
    :goto_0
    invoke-static {p4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&pageToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "pageTokenParam":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "categoryIdParam":Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&channelId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "channelParam":Ljava/lang/String;
    :goto_3
    const-string v7, "https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&key=%s&maxResults=%s%s%s%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getApiKey()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mHttpClient:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v7, v5, v6}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v4

    .line 198
    .local v4, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :try_start_0
    new-instance v7, Lcom/eventgenie/android/utils/social/youtube/YouTube$3;

    invoke-direct {v7, p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$3;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube;)V

    invoke-static {v4, v7}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_4
    return-object v7

    .line 180
    .end local v0    # "categoryIdParam":Ljava/lang/String;
    .end local v1    # "channelParam":Ljava/lang/String;
    .end local v3    # "pageTokenParam":Ljava/lang/String;
    .end local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "useCache":Z
    :cond_0
    iget-object v7, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 183
    .restart local v6    # "useCache":Z
    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 184
    .restart local v3    # "pageTokenParam":Ljava/lang/String;
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 185
    .restart local v0    # "categoryIdParam":Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 204
    .restart local v1    # "channelParam":Ljava/lang/String;
    .restart local v4    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ Could not find videos for category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 208
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private static executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;)Ljava/lang/Object;
    .locals 3
    .param p0, "get"    # Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/ignition/support/http/IgnitedHttpRequest;",
            "Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "handler":Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;, "Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler<TT;>;"
    invoke-interface {p0}, Lcom/github/ignition/support/http/IgnitedHttpRequest;->send()Lcom/github/ignition/support/http/IgnitedHttpResponse;

    move-result-object v0

    .line 248
    .local v0, "res":Lcom/github/ignition/support/http/IgnitedHttpResponse;
    invoke-interface {v0}, Lcom/github/ignition/support/http/IgnitedHttpResponse;->getStatusCode()I

    move-result v2

    invoke-static {p0, v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isRequestSuccessful(Lcom/github/ignition/support/http/IgnitedHttpRequest;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkBase;->getResponseBodyAsString(Lcom/github/ignition/support/http/IgnitedHttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "response":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;->handleResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 253
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static fromSearchItem(Lorg/json/JSONObject;)Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    .locals 4
    .param p0, "searchItem"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V

    .line 383
    .local v0, "entry":Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    const-string v3, "snippet"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 385
    .local v2, "snippet":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 387
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->setTitle(Ljava/lang/String;)V

    .line 388
    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->setDescription(Ljava/lang/String;)V

    .line 389
    const-string v3, "publishedAt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->setDate(Ljava/lang/String;)V

    .line 391
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 394
    .local v1, "id":Lorg/json/JSONObject;
    const-string/jumbo v3, "videoId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->setVideoId(Ljava/lang/String;)V

    .line 398
    .end local v1    # "id":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v0, v2}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->setThumbnails(Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;Lorg/json/JSONObject;)V

    .line 402
    :cond_1
    return-object v0
.end method

.method private getApiKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 213
    iget-object v3, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mApiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 219
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 221
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "com.google.android.youtube.v3.API_KEY"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mApiKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mApiKey:Ljava/lang/String;

    return-object v3

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getChannelIdForUser(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "forceCache"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 152
    if-eqz p2, :cond_0

    move v3, v4

    .line 157
    .local v3, "useCache":Z
    :goto_0
    const-string v6, "https://www.googleapis.com/youtube/v3/channels?part=id&key=%s&forUsername=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getApiKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mHttpClient:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v4, v2, v3}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 165
    .local v1, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :try_start_0
    new-instance v4, Lcom/eventgenie/android/utils/social/youtube/YouTube$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$2;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube;)V

    invoke-static {v1, v4}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    return-object v4

    .line 152
    .end local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "useCache":Z
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 171
    .restart local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v3    # "useCache":Z
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Could not find channel ID for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 175
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getSecondsFromYTDuration(Ljava/lang/String;)I
    .locals 9
    .param p0, "duration"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v6, 0x0

    .line 429
    .local v6, "totalSeconds":I
    const/4 v1, 0x0

    .local v1, "hourexists":Z
    const/4 v3, 0x0

    .local v3, "minutesexists":Z
    const/4 v5, 0x0

    .line 430
    .local v5, "secondsexists":Z
    const-string v7, "H"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    const/4 v1, 0x1

    .line 432
    :cond_0
    const-string v7, "M"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 433
    const/4 v3, 0x1

    .line 434
    :cond_1
    const-string v7, "S"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 435
    const/4 v5, 0x1

    .line 436
    :cond_2
    if-eqz v1, :cond_3

    .line 437
    const-string v0, ""

    .line 438
    .local v0, "hour":Ljava/lang/String;
    const-string v7, "T"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "H"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0xe10

    add-int/2addr v6, v7

    .line 443
    .end local v0    # "hour":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 444
    const-string v2, ""

    .line 445
    .local v2, "minutes":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 446
    const-string v7, "H"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "M"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 452
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    .line 455
    .end local v2    # "minutes":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    .line 456
    const-string v4, ""

    .line 457
    .local v4, "seconds":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 458
    if-eqz v3, :cond_7

    .line 459
    const-string v7, "M"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "S"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 471
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    .line 473
    .end local v4    # "seconds":Ljava/lang/String;
    :cond_5
    return v6

    .line 449
    .restart local v2    # "minutes":Ljava/lang/String;
    :cond_6
    const-string v7, "T"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "M"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 462
    .end local v2    # "minutes":Ljava/lang/String;
    .restart local v4    # "seconds":Ljava/lang/String;
    :cond_7
    const-string v7, "H"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "S"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 464
    :cond_8
    if-eqz v3, :cond_9

    .line 465
    const-string v7, "M"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "S"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 468
    :cond_9
    const-string v7, "T"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string v8, "S"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getVideosForCategory(Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 6
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "perPage"    # I
    .param p3, "pageToken"    # Ljava/lang/String;
    .param p4, "forceCache"    # Z

    .prologue
    .line 147
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->doSearch(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v0

    return-object v0
.end method

.method private getVideosForUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "categoryTag"    # Ljava/lang/String;
    .param p3, "perPage"    # I
    .param p4, "pageToken"    # Ljava/lang/String;
    .param p5, "forceCache"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1, p5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getChannelIdForUser(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "channelId":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 138
    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->doSearch(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseChannelResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "stringResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    .local v3, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 304
    .local v2, "items":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 306
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 308
    .local v0, "channelItem":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 309
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 318
    .end local v0    # "channelItem":Lorg/json/JSONObject;
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "response":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "Error reading JSON from YouTube API response"

    invoke-static {v4, v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 318
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static parseSearchResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 7
    .param p0, "stringResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v3, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    invoke-direct {v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;-><init>()V

    .line 272
    .local v3, "list":Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    .local v4, "response":Lorg/json/JSONObject;
    const-string v6, "prevPageToken"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mPrevPageToken:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->access$302(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v6, "nextPageToken"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mNextPageToken:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->access$402(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 279
    .local v2, "items":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 281
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 283
    .local v5, "searchItem":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 284
    invoke-static {v5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->fromSearchItem(Lorg/json/JSONObject;)Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    move-result-object v6

    # invokes: Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->add(Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;)V
    invoke-static {v3, v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->access$500(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "ii":I
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v4    # "response":Lorg/json/JSONObject;
    .end local v5    # "searchItem":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "Error reading JSON from YouTube API response"

    invoke-static {v6, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 293
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v3
.end method

.method private static parseVideoResponse(Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 11
    .param p0, "stringResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 325
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 327
    .local v5, "response":Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 329
    .local v4, "items":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 331
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 333
    .local v8, "videoItem":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 334
    new-instance v3, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V

    .line 336
    .local v3, "entry":Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setVideoId(Ljava/lang/String;)V

    .line 338
    const-string v10, "snippet"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 340
    const-string v10, "snippet"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 342
    .local v6, "snippet":Lorg/json/JSONObject;
    const-string/jumbo v10, "title"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setTitle(Ljava/lang/String;)V

    .line 343
    const-string v10, "description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setDescription(Ljava/lang/String;)V

    .line 344
    const-string v10, "publishedAt"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setDate(Ljava/lang/String;)V

    .line 346
    invoke-static {v3, v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->setThumbnails(Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;Lorg/json/JSONObject;)V

    .line 350
    .end local v6    # "snippet":Lorg/json/JSONObject;
    :cond_0
    const-string v10, "contentDetails"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 352
    const-string v10, "contentDetails"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 354
    .local v0, "contentDetails":Lorg/json/JSONObject;
    const-string v10, "duration"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "duration":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 357
    invoke-static {v1}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getSecondsFromYTDuration(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setDurationSeconds(I)V

    .line 361
    .end local v0    # "contentDetails":Lorg/json/JSONObject;
    .end local v1    # "duration":Ljava/lang/String;
    :cond_1
    const-string v10, "statistics"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 362
    const-string v10, "statistics"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 364
    .local v7, "stats":Lorg/json/JSONObject;
    const-string/jumbo v10, "viewCount"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setPlays(I)V

    .line 365
    const-string v10, "favoriteCount"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->setFavs(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v3    # "entry":Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .end local v4    # "items":Lorg/json/JSONArray;
    .end local v5    # "response":Lorg/json/JSONObject;
    .end local v7    # "stats":Lorg/json/JSONObject;
    .end local v8    # "videoItem":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v3

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Lorg/json/JSONException;
    const-string v10, "Error reading JSON from YouTube API response"

    invoke-static {v10, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    move-object v3, v9

    .line 377
    goto :goto_0
.end method

.method private static setThumbnails(Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "entry"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    .param p1, "parentItem"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 407
    const-string/jumbo v3, "thumbnails"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    const-string/jumbo v3, "thumbnails"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 412
    .local v2, "thumbnails":Lorg/json/JSONObject;
    const-string v3, "default"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    const-string v3, "default"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 415
    .local v0, "defaultThumb":Lorg/json/JSONObject;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->setThumbnailSmall(Ljava/lang/String;)V

    .line 418
    .end local v0    # "defaultThumb":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "high"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    const-string v3, "high"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 421
    .local v1, "largeThumb":Lorg/json/JSONObject;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->setThumbnailLarge(Ljava/lang/String;)V

    .line 424
    .end local v1    # "largeThumb":Lorg/json/JSONObject;
    .end local v2    # "thumbnails":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public getVideo(Ljava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 9
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "forceCache"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    if-eqz p2, :cond_0

    move v3, v4

    .line 102
    .local v3, "useCache":Z
    :goto_0
    const-string v6, "https://www.googleapis.com/youtube/v3/videos?part=contentDetails%%2Cstatistics%%2Csnippet&key=%s&id=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getApiKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object p1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mHttpClient:Lcom/github/ignition/support/http/IgnitedHttp;

    invoke-virtual {v4, v2, v3}, Lcom/github/ignition/support/http/IgnitedHttp;->get(Ljava/lang/String;Z)Lcom/github/ignition/support/http/IgnitedHttpRequest;

    move-result-object v1

    .line 110
    .local v1, "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    :try_start_0
    new-instance v4, Lcom/eventgenie/android/utils/social/youtube/YouTube$1;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$1;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube;)V

    invoke-static {v1, v4}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->executeRequestBetter(Lcom/github/ignition/support/http/IgnitedHttpRequest;Lcom/eventgenie/android/utils/social/youtube/YouTube$ResponseHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    return-object v4

    .line 98
    .end local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "useCache":Z
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 116
    .restart local v1    # "req":Lcom/github/ignition/support/http/IgnitedHttpRequest;
    .restart local v2    # "url":Ljava/lang/String;
    .restart local v3    # "useCache":Z
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Could not find video for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getVideos(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "categoryTag"    # Ljava/lang/String;
    .param p3, "perPage"    # I
    .param p4, "pageToken"    # Ljava/lang/String;
    .param p5, "forceCache"    # Z

    .prologue
    .line 125
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct/range {p0 .. p5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getVideosForUser(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getVideosForCategory(Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
