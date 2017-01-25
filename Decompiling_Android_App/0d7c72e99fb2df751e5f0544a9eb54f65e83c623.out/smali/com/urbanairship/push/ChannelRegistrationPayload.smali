.class Lcom/urbanairship/push/ChannelRegistrationPayload;
.super Ljava/lang/Object;
.source "ChannelRegistrationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/ChannelRegistrationPayload$1;,
        Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    }
.end annotation


# static fields
.field static final ALIAS_KEY:Ljava/lang/String; = "alias"

.field static final APID_KEY:Ljava/lang/String; = "apid"

.field static final BACKGROUND_ENABLED_KEY:Ljava/lang/String; = "background"

.field static final CHANNEL_KEY:Ljava/lang/String; = "channel"

.field static final DEVICE_TYPE_KEY:Ljava/lang/String; = "device_type"

.field static final IDENTITY_HINTS_KEY:Ljava/lang/String; = "identity_hints"

.field static final OPT_IN_KEY:Ljava/lang/String; = "opt_in"

.field static final PUSH_ADDRESS_KEY:Ljava/lang/String; = "push_address"

.field static final SET_TAGS_KEY:Ljava/lang/String; = "set_tags"

.field static final TAGS_KEY:Ljava/lang/String; = "tags"

.field static final USER_ID_KEY:Ljava/lang/String; = "user_id"


# instance fields
.field private alias:Ljava/lang/String;

.field private apid:Ljava/lang/String;

.field private backgroundEnabled:Z

.field private deviceType:Ljava/lang/String;

.field private optIn:Z

.field private pushAddress:Ljava/lang/String;

.field private setTags:Z

.field private tags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$100(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    .line 180
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$200(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    .line 181
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$300(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$400(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$500(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$600(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    .line 185
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$600(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$700(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    .line 186
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$800(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->access$900(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    .line 188
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;Lcom/urbanairship/push/ChannelRegistrationPayload$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    .param p2, "x1"    # Lcom/urbanairship/push/ChannelRegistrationPayload$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/urbanairship/push/ChannelRegistrationPayload;-><init>(Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;)V

    return-void
.end method

.method protected static createFromJSON(Lorg/json/JSONObject;)Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 308
    new-instance v0, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    invoke-direct {v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;-><init>()V

    .line 309
    .local v0, "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-object v8

    .line 314
    :cond_1
    :try_start_0
    const-string v9, "channel"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    .local v1, "channelJSON":Lorg/json/JSONObject;
    const-string v9, "opt_in"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v0, v9}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setOptIn(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string v10, "background"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setBackgroundEnabled(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string v10, "device_type"

    invoke-static {v1, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string v10, "push_address"

    invoke-static {v1, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string v10, "alias"

    invoke-static {v1, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setAlias(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string/jumbo v10, "user_id"

    invoke-static {v1, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string v10, "apid"

    invoke-static {v1, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .line 323
    const/4 v2, 0x0

    .line 324
    .local v2, "deviceTagsEnabled":Z
    const/4 v6, 0x0

    .line 326
    .local v6, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v9, "tags"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 327
    const-string/jumbo v9, "tags"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 328
    .local v7, "tagsJSON":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 329
    .restart local v6    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 330
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 334
    .end local v4    # "i":I
    .end local v7    # "tagsJSON":Lorg/json/JSONArray;
    :cond_2
    const-string v9, "set_tags"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 335
    const-string v9, "set_tags"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 338
    :cond_3
    invoke-virtual {v0, v2, v6}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags(ZLjava/util/Set;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    .line 340
    const-string v9, "identity_hints"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 341
    const-string v9, "identity_hints"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 342
    .local v5, "identityHintsJSON":Lorg/json/JSONObject;
    const-string/jumbo v9, "user_id"

    invoke-static {v5, v9}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v9

    const-string v10, "apid"

    invoke-static {v5, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v5    # "identityHintsJSON":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->build()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v8

    goto/16 :goto_0

    .line 345
    .end local v1    # "channelJSON":Lorg/json/JSONObject;
    .end local v2    # "deviceTagsEnabled":Z
    .end local v6    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 346
    .local v3, "e":Lorg/json/JSONException;
    const-string v9, "ChannelRegistrationPayload - Failed to parse payload from JSON."

    invoke-static {v9, v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :cond_0
    :goto_0
    return-object v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method asJSON()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 197
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v3, "payload":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v0, "channel":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 202
    .local v2, "identityHints":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "device_type"

    iget-object v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v4, "opt_in"

    iget-boolean v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 204
    const-string v4, "background"

    iget-boolean v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 205
    const-string v4, "push_address"

    iget-object v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    const-string v4, "alias"

    iget-object v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_0
    const-string v4, "set_tags"

    iget-boolean v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 214
    iget-boolean v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 215
    const-string/jumbo v4, "tags"

    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_1
    const-string v4, "channel"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 220
    const-string/jumbo v4, "user_id"

    iget-object v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    :cond_2
    iget-object v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 224
    const-string v4, "apid"

    iget-object v5, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    const-string v4, "identity_hints"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_4
    :goto_0
    return-object v3

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "ChannelRegistrationPayload - Failed to create channel registration payload as json"

    invoke-static {v4, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 258
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/urbanairship/push/ChannelRegistrationPayload;

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 263
    check-cast v0, Lcom/urbanairship/push/ChannelRegistrationPayload;

    .line 266
    .local v0, "lhs":Lcom/urbanairship/push/ChannelRegistrationPayload;
    iget-boolean v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    iget-boolean v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    iget-boolean v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_2
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_3
    iget-boolean v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    iget-boolean v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-nez v2, :cond_0

    :goto_4
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_5
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_6
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    iget-object v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_6
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    const/16 v0, 0x11

    .line 288
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->optIn:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 289
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->backgroundEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 290
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v3

    :goto_2
    add-int v0, v4, v1

    .line 291
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v3

    :goto_3
    add-int v0, v4, v1

    .line 292
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v3

    :goto_4
    add-int v0, v4, v1

    .line 293
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->setTags:Z

    if-eqz v4, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 294
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    if-nez v1, :cond_6

    move v1, v3

    :goto_6
    add-int v0, v2, v1

    .line 295
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v3

    :goto_7
    add-int v0, v2, v1

    .line 296
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    if-nez v2, :cond_8

    :goto_8
    add-int v0, v1, v3

    .line 298
    return v0

    :cond_0
    move v1, v3

    .line 288
    goto :goto_0

    :cond_1
    move v1, v3

    .line 289
    goto :goto_1

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->deviceType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->pushAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    move v2, v3

    .line 293
    goto :goto_5

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->tags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    goto :goto_6

    .line 295
    :cond_7
    iget-object v1, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    .line 296
    :cond_8
    iget-object v2, p0, Lcom/urbanairship/push/ChannelRegistrationPayload;->apid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/urbanairship/push/ChannelRegistrationPayload;->asJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
