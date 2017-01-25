.class Lcom/urbanairship/push/ChannelAPIClient;
.super Ljava/lang/Object;
.source "ChannelAPIClient.java"


# static fields
.field static final CHANNEL_CREATION_PATH:Ljava/lang/String; = "api/channels/"


# instance fields
.field protected creationURL:Ljava/net/URL;

.field private requestFactory:Lcom/urbanairship/http/RequestFactory;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/push/ChannelAPIClient;-><init>(Lcom/urbanairship/http/RequestFactory;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/http/RequestFactory;)V
    .locals 4
    .param p1, "requestFactory"    # Lcom/urbanairship/http/RequestFactory;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/urbanairship/push/ChannelAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "api/channels/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "urlString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/urbanairship/push/ChannelAPIClient;->creationURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/urbanairship/push/ChannelAPIClient;->creationURL:Ljava/net/URL;

    .line 58
    const-string v2, "ChannelAPIClient - Invalid hostURL    "

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private requestWithPayload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/ChannelResponse;
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "jsonPayload"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "appSecret":Ljava/lang/String;
    iget-object v3, p0, Lcom/urbanairship/push/ChannelAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    invoke-virtual {v3, p2, p1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v3, p3, v4}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    const-string v4, "Accept"

    const-string v5, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v2

    .line 110
    .local v2, "response":Lcom/urbanairship/http/Response;
    if-nez v2, :cond_0

    .line 111
    const-string v3, "ChannelAPIClient - Failed to receive channel response."

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 112
    const/4 v3, 0x0

    .line 116
    :goto_0
    return-object v3

    .line 115
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChannelAPIClient - Received channel response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 116
    new-instance v3, Lcom/urbanairship/push/ChannelResponse;

    invoke-direct {v3, v2}, Lcom/urbanairship/push/ChannelResponse;-><init>(Lcom/urbanairship/http/Response;)V

    goto :goto_0
.end method


# virtual methods
.method createChannelWithPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)Lcom/urbanairship/push/ChannelResponse;
    .locals 3
    .param p1, "channelPayload"    # Lcom/urbanairship/push/ChannelRegistrationPayload;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload;->asJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "payload":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelAPIClient - Creating channel with payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/urbanairship/push/ChannelAPIClient;->creationURL:Ljava/net/URL;

    const-string v2, "POST"

    invoke-direct {p0, v1, v2, v0}, Lcom/urbanairship/push/ChannelAPIClient;->requestWithPayload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/ChannelResponse;

    move-result-object v1

    return-object v1
.end method

.method updateChannelWithPayload(Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)Lcom/urbanairship/push/ChannelResponse;
    .locals 3
    .param p1, "channelLocation"    # Ljava/net/URL;
    .param p2, "channelPayload"    # Lcom/urbanairship/push/ChannelRegistrationPayload;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string v1, "ChannelAPIClient - Unable to update a channel with a null channel location."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 87
    :cond_0
    invoke-virtual {p2}, Lcom/urbanairship/push/ChannelRegistrationPayload;->asJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "payload":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelAPIClient - Updating channel with payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 89
    const-string v1, "PUT"

    invoke-direct {p0, p1, v1, v0}, Lcom/urbanairship/push/ChannelAPIClient;->requestWithPayload(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/push/ChannelResponse;

    move-result-object v1

    goto :goto_0
.end method
