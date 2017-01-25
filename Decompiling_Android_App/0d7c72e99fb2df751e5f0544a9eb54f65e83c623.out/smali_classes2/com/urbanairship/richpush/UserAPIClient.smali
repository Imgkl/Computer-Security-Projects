.class Lcom/urbanairship/richpush/UserAPIClient;
.super Ljava/lang/Object;
.source "UserAPIClient.java"


# static fields
.field private static final DELETE_MESSAGES_PATH:Ljava/lang/String; = "api/user/%s/messages/delete/"

.field private static final MARK_READ_MESSAGES_PATH:Ljava/lang/String; = "api/user/%s/messages/unread/"

.field private static final MESSAGES_PATH:Ljava/lang/String; = "api/user/%s/messages/"

.field private static final USER_CREATION_PATH:Ljava/lang/String; = "api/user/"

.field private static final USER_UPDATE_PATH:Ljava/lang/String; = "api/user/%s/"


# instance fields
.field private requestFactory:Lcom/urbanairship/http/RequestFactory;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/urbanairship/http/RequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/http/RequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/UserAPIClient;-><init>(Lcom/urbanairship/http/RequestFactory;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/http/RequestFactory;)V
    .locals 0
    .param p1, "requestFactory"    # Lcom/urbanairship/http/RequestFactory;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/urbanairship/richpush/UserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    .line 69
    return-void
.end method

.method private varargs getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 254
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    iget-object v1, v3, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    .line 255
    .local v1, "hostURL":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "urlString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-object v3

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v3, "Invalid userURL"

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private messagesFromResponse(Ljava/lang/String;)[Landroid/content/ContentValues;
    .locals 8
    .param p1, "messagesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 266
    const/4 v3, 0x0

    .line 296
    :cond_0
    return-object v3

    .line 269
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "messages"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 271
    .local v4, "messagesJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 272
    .local v0, "count":I
    new-array v3, v0, [Landroid/content/ContentValues;

    .line 274
    .local v3, "messages":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 275
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 277
    .local v2, "messageJson":Lorg/json/JSONObject;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "timestamp"

    const-string v7, "message_sent"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v6, "message_id"

    const-string v7, "message_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v6, "message_url"

    const-string v7, "message_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v6, "message_body_url"

    const-string v7, "message_body_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v6, "message_read_url"

    const-string v7, "message_read_url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v6, "title"

    const-string v7, "title"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v6, "unread_orig"

    const-string v7, "unread"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 286
    const-string v6, "extra"

    const-string v7, "extra"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v6, "raw_message_object"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v6, "message_expiry"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    const-string v6, "expiration_timestamp"

    const-string v7, "message_expiry"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_2
    aput-object v5, v3, v1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method createUser(Lorg/json/JSONObject;)Lcom/urbanairship/richpush/UserResponse;
    .locals 11
    .param p1, "userPayload"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 78
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "appSecret":Ljava/lang/String;
    const-string v8, "api/user/"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v8, v9}, Lcom/urbanairship/richpush/UserAPIClient;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v4

    .line 82
    .local v4, "userCreationURL":Ljava/net/URL;
    if-nez v4, :cond_0

    .line 109
    :goto_0
    return-object v7

    .line 86
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserAPIClient - Creating Rich Push user with payload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 87
    iget-object v8, p0, Lcom/urbanairship/richpush/UserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v9, "POST"

    invoke-virtual {v8, v9, v4}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v8

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "application/json"

    invoke-virtual {v8, v9, v10}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v8

    const-string v9, "Accept"

    const-string v10, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v8, v9, v10}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v3

    .line 93
    .local v3, "response":Lcom/urbanairship/http/Response;
    if-nez v3, :cond_1

    .line 94
    const-string v8, "UserAPIClient - Failed to receive response for Rich Push user creation."

    invoke-static {v8}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v8

    const/16 v9, 0xc9

    if-ne v8, v9, :cond_2

    .line 100
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "user_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "userId":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "password"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 106
    .local v6, "userToken":Ljava/lang/String;
    new-instance v7, Lcom/urbanairship/richpush/UserResponse;

    invoke-direct {v7, v5, v6}, Lcom/urbanairship/richpush/UserResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "userToken":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserAPIClient - Unable to parse Rich Push user response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserAPIClient - Rich Push user creation failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method deleteMessages(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "messagePayload"    # Lorg/json/JSONObject;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "userToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    :cond_0
    const-string v2, "UserAPIClient - Unable to delete messages with a null userId or null userToken."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_0
    return v3

    .line 157
    :cond_2
    const-string v4, "api/user/%s/messages/delete/"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/richpush/UserAPIClient;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v0

    .line 158
    .local v0, "deleteMessagesURL":Ljava/net/URL;
    if-eqz v0, :cond_1

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Deleting inbox messages with payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/urbanairship/richpush/UserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v5, "POST"

    invoke-virtual {v4, v5, v0}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    const-string v5, "Accept"

    const-string v6, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v1

    .line 169
    .local v1, "response":Lcom/urbanairship/http/Response;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Delete inbox messages response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 170
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method getMessages(Ljava/lang/String;Ljava/lang/String;J)Lcom/urbanairship/richpush/MessageListResponse;
    .locals 11
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userToken"    # Ljava/lang/String;
    .param p3, "ifModifiedSinceMS"    # J

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :cond_0
    const-string v4, "Unable to get messages with a null userId or null userToken."

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 240
    :cond_1
    :goto_0
    return-object v3

    .line 217
    :cond_2
    const-string v4, "api/user/%s/messages/"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/richpush/UserAPIClient;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v1

    .line 218
    .local v1, "getMessagesURL":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 222
    const-string v4, "UserAPIClient - Fetching inbox messages."

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/urbanairship/richpush/UserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v5, "GET"

    invoke-virtual {v4, v5, v1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    const-string v5, "Accept"

    const-string v6, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/urbanairship/http/Request;->setIfModifiedSince(J)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v2

    .line 229
    .local v2, "response":Lcom/urbanairship/http/Response;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Fetch inbox messages response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 231
    if-eqz v2, :cond_1

    .line 235
    :try_start_0
    new-instance v4, Lcom/urbanairship/richpush/MessageListResponse;

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/urbanairship/richpush/UserAPIClient;->messagesFromResponse(Ljava/lang/String;)[Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v6

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getLastModifiedTime()J

    move-result-wide v8

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/urbanairship/richpush/MessageListResponse;-><init>([Landroid/content/ContentValues;IJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Unable to parse messages."

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method markMessagesRead(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "messagePayload"    # Lorg/json/JSONObject;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "userToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    :cond_0
    const-string v2, "Unable to mark messages read with a null userId or null userToken."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 200
    :cond_1
    :goto_0
    return v3

    .line 187
    :cond_2
    const-string v4, "api/user/%s/messages/unread/"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/richpush/UserAPIClient;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v0

    .line 188
    .local v0, "markMessagesReadURL":Ljava/net/URL;
    if-eqz v0, :cond_1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Marking inbox messages read request with payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/urbanairship/richpush/UserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v5, "POST"

    invoke-virtual {v4, v5, v0}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    const-string v5, "Accept"

    const-string v6, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v1

    .line 199
    .local v1, "response":Lcom/urbanairship/http/Response;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Mark inbox messages read response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 200
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method updateUser(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "userPayload"    # Lorg/json/JSONObject;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "userToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    :cond_0
    const-string v2, "Unable to update user with a null userId or null userToken."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 140
    :cond_1
    :goto_0
    return v3

    .line 127
    :cond_2
    const-string v4, "api/user/%s/"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/richpush/UserAPIClient;->getUserURL(Ljava/lang/String;[Ljava/lang/Object;)Ljava/net/URL;

    move-result-object v1

    .line 128
    .local v1, "userUpdateURL":Ljava/net/URL;
    if-eqz v1, :cond_1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Updating user with payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/urbanairship/richpush/UserAPIClient;->requestFactory:Lcom/urbanairship/http/RequestFactory;

    const-string v5, "POST"

    invoke-virtual {v4, v5, v1}, Lcom/urbanairship/http/RequestFactory;->createRequest(Ljava/lang/String;Ljava/net/URL;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/urbanairship/http/Request;->setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    const-string v5, "Accept"

    const-string v6, "application/vnd.urbanairship+json; version=3;"

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/http/Request;->execute()Lcom/urbanairship/http/Response;

    move-result-object v0

    .line 139
    .local v0, "response":Lcom/urbanairship/http/Response;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAPIClient - Update Rich Push user response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 140
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
