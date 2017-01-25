.class Lcom/urbanairship/push/NamedUserAPIClient;
.super Ljava/lang/Object;
.source "NamedUserAPIClient.java"


# static fields
.field static final CHANNEL_KEY:Ljava/lang/String; = "channel_id"

.field static final DEVICE_TYPE_KEY:Ljava/lang/String; = "device_type"

.field static final NAMED_USER_ID_KEY:Ljava/lang/String; = "named_user_id"

.field static final NAMED_USER_PATH:Ljava/lang/String; = "api/named_users"


# instance fields
.field private requestFactory:Lcom/urbanairship/http/RequestFactory;

.field protected urlString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/push/NamedUserAPIClient;-><init>(Lcom/urbanairship/http/RequestFactory;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/http/RequestFactory;)V
    .locals 2
    .param p1, "requestFactory"    # Lcom/urbanairship/http/RequestFactory;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/urbanairship/push/NamedUserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/named_users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/NamedUserAPIClient;->urlString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private request(Ljava/net/URL;Ljava/lang/String;)Lcom/urbanairship/http/Response;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jsonPayload"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "appSecret":Ljava/lang/String;
    iget-object v3, p0, Lcom/urbanairship/push/NamedUserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v4, "POST"

    invoke-virtual {v3, v4, p1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, p2, v4}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    const-string v4, "Accept"

    const-string v5, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v2

    .line 151
    .local v2, "response":Lcom/urbanairship/http/Response;
    if-nez v2, :cond_0

    .line 152
    const-string v3, "Failed to receive a response for named user."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-object v2

    .line 154
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received a response for named user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method associate(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Response;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    const-string v6, "The named user ID cannot be null."

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-object v5

    .line 74
    :cond_0
    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    const-string v6, "The channel ID cannot be null."

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v3, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "channel_id"

    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v6, "device_type"

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUserAPIClient;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v6, "named_user_id"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/urbanairship/push/NamedUserAPIClient;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/associate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "urlString":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .local v0, "associateUrl":Ljava/net/URL;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/urbanairship/push/NamedUserAPIClient;->request(Ljava/net/URL;Ljava/lang/String;)Lcom/urbanairship/http/Response;

    move-result-object v5

    goto :goto_0

    .line 85
    .end local v0    # "associateUrl":Ljava/net/URL;
    .end local v4    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "Failed to create associate named user payload as json."

    invoke-static {v6, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v6, "Invalid hostURL"

    invoke-static {v6, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method disassociate(Ljava/lang/String;)Lcom/urbanairship/http/Response;
    .locals 8
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    const-string v6, "The channel ID cannot be null."

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-object v5

    .line 113
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v3, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "channel_id"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v6, "device_type"

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUserAPIClient;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/urbanairship/push/NamedUserAPIClient;->urlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/disassociate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "urlString":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .local v0, "disassociateUrl":Ljava/net/URL;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/urbanairship/push/NamedUserAPIClient;->request(Ljava/net/URL;Ljava/lang/String;)Lcom/urbanairship/http/Response;

    move-result-object v5

    goto :goto_0

    .line 118
    .end local v0    # "disassociateUrl":Ljava/net/URL;
    .end local v4    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "Failed to create disassociate named user payload as json."

    invoke-static {v6, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 126
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v6, "Invalid hostURL"

    invoke-static {v6, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 175
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "android"

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "amazon"

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
