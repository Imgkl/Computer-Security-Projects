.class public Lcom/urbanairship/richpush/RichPushUpdateService;
.super Landroid/app/IntentService;
.source "RichPushUpdateService.java"


# static fields
.field public static final ACTION_RICH_PUSH_MESSAGES_UPDATE:Ljava/lang/String; = "com.urbanairship.richpush.MESSAGES_UPDATE"

.field public static final ACTION_RICH_PUSH_USER_UPDATE:Ljava/lang/String; = "com.urbanairship.richpush.USER_UPDATE"

.field private static final DELETE_MESSAGES_KEY:Ljava/lang/String; = "delete"

.field public static final EXTRA_RICH_PUSH_RESULT_RECEIVER:Ljava/lang/String; = "com.urbanairship.richpush.RESULT_RECEIVER"

.field private static final MARK_READ_MESSAGES_KEY:Ljava/lang/String; = "mark_as_read"

.field private static final MESSAGE_URL:Ljava/lang/String; = "api/user/%s/messages/message/%s/"

.field private static final PAYLOAD_ADD_KEY:Ljava/lang/String; = "add"

.field private static final PAYLOAD_AMAZON_CHANNELS_KEY:Ljava/lang/String; = "amazon_channels"

.field private static final PAYLOAD_ANDROID_CHANNELS_KEY:Ljava/lang/String; = "android_channels"

.field public static final STATUS_RICH_PUSH_UPDATE_ERROR:I = 0x1

.field public static final STATUS_RICH_PUSH_UPDATE_SUCCESS:I


# instance fields
.field resolver:Lcom/urbanairship/richpush/RichPushResolver;

.field userClient:Lcom/urbanairship/richpush/UserAPIClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "RichPushUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 419
    .local v3, "payload":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "userId":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 422
    .local v2, "id":Ljava/lang/String;
    const-string v5, "api/user/%s/messages/message/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/urbanairship/richpush/RichPushUpdateService;->formatUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "payload":Lorg/json/JSONObject;
    .end local v4    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 429
    const/4 v3, 0x0

    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v3

    .line 424
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "payload":Lorg/json/JSONObject;
    .restart local v4    # "userId":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createNewUserPayload()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v2, "payload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "channelId":Ljava/lang/String;
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 268
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 269
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getPayloadChannelsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    return-object v2
.end method

.method private createUpdateUserPayload()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 282
    .local v2, "payload":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    .local v0, "channelPayload":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 285
    .local v1, "channels":Lorg/json/JSONArray;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 287
    const-string v3, "add"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getPayloadChannelsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    return-object v2
.end method

.method private createUser()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->createNewUserPayload()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v4, "Creating Rich Push user."

    invoke-static {v4}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->userClient:Lcom/urbanairship/richpush/UserAPIClient;

    invoke-virtual {v4, v1}, Lcom/urbanairship/richpush/UserAPIClient;->createUser(Lorg/json/JSONObject;)Lcom/urbanairship/richpush/UserResponse;

    move-result-object v2

    .line 210
    .local v2, "response":Lcom/urbanairship/richpush/UserResponse;
    if-nez v2, :cond_0

    .line 219
    .end local v1    # "payload":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/urbanairship/richpush/UserResponse;
    :goto_0
    return v3

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Exception constructing JSON data when creating user."

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "payload":Lorg/json/JSONObject;
    .restart local v2    # "response":Lcom/urbanairship/richpush/UserResponse;
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v4

    invoke-virtual {v2}, Lcom/urbanairship/richpush/UserResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/urbanairship/richpush/UserResponse;->getUserToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/richpush/RichPushUser;->setUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const-string v3, "Rich Push user created."

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/richpush/RichPushUser;->setLastUpdateTime(J)V

    .line 216
    const/4 v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const-string v4, "Rich Push user creation failed."

    invoke-static {v4}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteMessagesOnServer(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "deletedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "delete"

    invoke-direct {p0, v1, p1}, Lcom/urbanairship/richpush/RichPushUpdateService;->buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    .local v0, "payload":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->userClient:Lcom/urbanairship/richpush/UserAPIClient;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/urbanairship/richpush/UserAPIClient;->deleteMessages(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private formatUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urlFormat"    # Ljava/lang/String;
    .param p2, "urlParams"    # [Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getHostUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "urlParams":[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    return-object v0
.end method

.method private getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 508
    :goto_0
    return-object v0

    .line 496
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 498
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 499
    .local v1, "messageIdIndex":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 501
    const-string v2, "message_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 503
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 506
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPayloadChannelsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    const-string v0, "android_channels"

    :goto_0
    return-object v0

    .line 301
    :pswitch_0
    const-string v0, "amazon_channels"

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getUser()Lcom/urbanairship/richpush/RichPushUser;
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    return-object v0
.end method

.method private handleDeletedMessages()V
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushResolver;->getDeletedMessages()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 314
    .local v0, "idsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RichPushUpdateService - Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to delete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->deleteMessagesOnServer(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->deleteMessages(Ljava/util/Set;)I

    .line 323
    :cond_0
    return-void
.end method

.method private handleReadMessages()V
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushResolver;->getReadUpdatedMessages()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 331
    .local v0, "idsToUpdate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RichPushUpdateService - Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages to mark read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->markMessagesReadOnServer(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "unread_orig"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->updateMessages(Ljava/util/Set;Landroid/content/ContentValues;)I

    .line 344
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private markMessagesReadOnServer(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "readIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "mark_as_read"

    invoke-direct {p0, v1, p1}, Lcom/urbanairship/richpush/RichPushUpdateService;->buildMessagesPayload(Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 410
    .local v0, "payload":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->userClient:Lcom/urbanairship/richpush/UserAPIClient;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/urbanairship/richpush/UserAPIClient;->markMessagesRead(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private messagesUpdate(Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->updateMessages()Z

    move-result v0

    .line 168
    .local v0, "success":Z
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    .line 171
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->handleReadMessages()V

    .line 172
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->handleDeletedMessages()V

    .line 173
    return-void
.end method

.method private respond(Landroid/os/ResultReceiver;Z)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "status"    # Z

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method private respond(Landroid/os/ResultReceiver;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "status"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 137
    if-eqz p1, :cond_1

    .line 138
    if-nez p3, :cond_0

    .line 139
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "bundle":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 141
    .restart local p3    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz p2, :cond_2

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private updateInbox([Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "serverMessages"    # [Landroid/content/ContentValues;

    .prologue
    .line 461
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v7, "messagesToInsert":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 464
    .local v8, "serverMessageIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "arr$":[Landroid/content/ContentValues;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 465
    .local v4, "message":Landroid/content/ContentValues;
    const-string v9, "message_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "messageId":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v9, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v9, v6, v4}, Lcom/urbanairship/richpush/RichPushResolver;->updateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 469
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v4    # "message":Landroid/content/ContentValues;
    .end local v6    # "messageId":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 475
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v5, v9, [Landroid/content/ContentValues;

    .line 476
    .local v5, "messageArray":[Landroid/content/ContentValues;
    invoke-interface {v7, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 477
    iget-object v9, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v9, v5}, Lcom/urbanairship/richpush/RichPushResolver;->insertMessages([Landroid/content/ContentValues;)I

    .line 481
    .end local v5    # "messageArray":[Landroid/content/ContentValues;
    :cond_2
    iget-object v9, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v9}, Lcom/urbanairship/richpush/RichPushResolver;->getAllMessages()Landroid/database/Cursor;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/urbanairship/richpush/RichPushUpdateService;->getMessageIdsFromCursor(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    .line 482
    .local v0, "allIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 483
    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 484
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/urbanairship/richpush/RichPushInbox;->deleteMessages(Ljava/util/Set;)V

    .line 488
    :cond_3
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/richpush/RichPushInbox;->updateCache()V

    .line 489
    return-void
.end method

.method private updateMessages()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    .line 353
    .local v2, "user":Lcom/urbanairship/richpush/RichPushUser;
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->userClient:Lcom/urbanairship/richpush/UserAPIClient;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getLastMessageRefreshTime()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/urbanairship/richpush/UserAPIClient;->getMessages(Ljava/lang/String;Ljava/lang/String;J)Lcom/urbanairship/richpush/MessageListResponse;

    move-result-object v0

    .line 357
    .local v0, "response":Lcom/urbanairship/richpush/MessageListResponse;
    const-string v5, "Refreshing inbox messages."

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 359
    if-nez v0, :cond_0

    .line 360
    const-string v4, "RichPushUpdateService - Inbox message list request failed."

    invoke-static {v4}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 384
    :goto_0
    return v3

    .line 364
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RichPushUpdateService - Inbox message list request received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/urbanairship/richpush/MessageListResponse;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/urbanairship/richpush/MessageListResponse;->getStatus()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 383
    const-string v4, "Unable to update inbox messages."

    invoke-static {v4}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :sswitch_0
    const-string v3, "Inbox messages already up-to-date. "

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    move v3, v4

    .line 369
    goto :goto_0

    .line 372
    :sswitch_1
    invoke-virtual {v0}, Lcom/urbanairship/richpush/MessageListResponse;->getServerMessages()[Landroid/content/ContentValues;

    move-result-object v1

    .line 373
    .local v1, "serverMessages":[Landroid/content/ContentValues;
    if-nez v1, :cond_1

    .line 374
    const-string v3, "Inbox message list is empty."

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :goto_1
    move v3, v4

    .line 380
    goto :goto_0

    .line 376
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " inbox messages."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->updateInbox([Landroid/content/ContentValues;)V

    .line 378
    invoke-virtual {v0}, Lcom/urbanairship/richpush/MessageListResponse;->getLastModifiedTimeMS()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/urbanairship/richpush/RichPushUser;->setLastMessageRefreshTime(J)V

    goto :goto_1

    .line 366
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateUser()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const-string v3, "RichPushUpdateService - No Channel. Skipping Rich Push user update."

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 253
    :goto_0
    return v2

    .line 235
    :cond_0
    const-string v3, "Updating Rich Push user."

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->createUpdateUserPayload()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    .local v1, "payload":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->userClient:Lcom/urbanairship/richpush/UserAPIClient;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/urbanairship/richpush/UserAPIClient;->updateUser(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    const-string v2, "Rich Push user updated."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/urbanairship/richpush/RichPushUser;->setLastUpdateTime(J)V

    .line 250
    const/4 v2, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "Exception constructing JSON data when updating user."

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "payload":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/richpush/RichPushUser;->setLastUpdateTime(J)V

    goto :goto_0
.end method

.method private userUpdate(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 182
    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->createUser()Z

    move-result v0

    .line 188
    .local v0, "success":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    .line 189
    return-void

    .line 185
    .end local v0    # "success":Z
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->updateUser()Z

    move-result v0

    .restart local v0    # "success":Z
    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 99
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/urbanairship/richpush/UserAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/richpush/UserAPIClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->userClient:Lcom/urbanairship/richpush/UserAPIClient;

    .line 102
    new-instance v0, Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushUpdateService;->resolver:Lcom/urbanairship/richpush/RichPushResolver;

    .line 103
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RichPushUpdateService - Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 115
    .local v0, "receiver":Landroid/os/ResultReceiver;
    const-string v1, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->isCreated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    const-string v1, "RichPushUpdateService - User has not been created, canceling messages update"

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushUpdateService;->respond(Landroid/os/ResultReceiver;Z)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->messagesUpdate(Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 124
    :cond_3
    const-string v1, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->userUpdate(Landroid/os/ResultReceiver;)V

    goto :goto_0
.end method
