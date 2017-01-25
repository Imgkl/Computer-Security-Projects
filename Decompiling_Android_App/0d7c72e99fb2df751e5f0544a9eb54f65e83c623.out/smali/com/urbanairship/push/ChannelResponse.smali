.class Lcom/urbanairship/push/ChannelResponse;
.super Ljava/lang/Object;
.source "ChannelResponse.java"


# instance fields
.field private final response:Lcom/urbanairship/http/Response;


# direct methods
.method public constructor <init>(Lcom/urbanairship/http/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/urbanairship/http/Response;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    .line 45
    return-void
.end method


# virtual methods
.method getChannelId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "channel_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method getChannelLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Location"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    .local v0, "headersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .end local v0    # "headersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/urbanairship/push/ChannelResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v0

    return v0
.end method
