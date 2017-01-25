.class public Lcom/urbanairship/push/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/push/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ACTIONS:Ljava/lang/String; = "com.urbanairship.actions"

.field public static final EXTRA_ALERT:Ljava/lang/String; = "com.urbanairship.push.ALERT"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "com.urbanairship.category"

.field public static final EXTRA_EXPIRATION:Ljava/lang/String; = "com.urbanairship.push.EXPIRATION"

.field public static final EXTRA_INTERACTIVE_ACTIONS:Ljava/lang/String; = "com.urbanairship.interactive_actions"

.field public static final EXTRA_INTERACTIVE_TYPE:Ljava/lang/String; = "com.urbanairship.interactive_type"

.field public static final EXTRA_IN_APP_MESSAGE:Ljava/lang/String; = "com.urbanairship.in_app"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "com.urbanairship.local_only"

.field static final EXTRA_PING:Ljava/lang/String; = "com.urbanairship.push.PING"

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "com.urbanairship.priority"

.field public static final EXTRA_PUBLIC_NOTIFICATION:Ljava/lang/String; = "com.urbanairship.public_notification"

.field public static final EXTRA_PUSH_ID:Ljava/lang/String; = "com.urbanairship.push.CANONICAL_PUSH_ID"

.field public static final EXTRA_SEND_ID:Ljava/lang/String; = "com.urbanairship.push.PUSH_ID"

.field public static final EXTRA_STRING_EXTRA:Ljava/lang/String; = "com.urbanairship.push.STRING_EXTRA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_STYLE:Ljava/lang/String; = "com.urbanairship.style"

.field public static final EXTRA_SUMMARY:Ljava/lang/String; = "com.urbanairship.summary"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.urbanairship.title"

.field public static final EXTRA_VISIBILITY:Ljava/lang/String; = "com.urbanairship.visibility"

.field public static final EXTRA_WEARABLE:Ljava/lang/String; = "com.urbanairship.wearable"

.field static final MAX_PRIORITY:I = 0x2

.field static final MAX_VISIBILITY:I = 0x1

.field static final MIN_PRIORITY:I = -0x2

.field static final MIN_VISIBILITY:I = -0x1

.field static final VISIBILITY_PUBLIC:I = 0x1


# instance fields
.field private pushBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/urbanairship/push/PushMessage$1;

    invoke-direct {v0}, Lcom/urbanairship/push/PushMessage$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/PushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "pushBundle"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    .line 178
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getActionsPayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlert()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.ALERT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPushId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.CANONICAL_PUSH_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInAppMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 388
    iget-object v6, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v7, "com.urbanairship.in_app"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    :try_start_0
    iget-object v6, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v7, "com.urbanairship.in_app"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/push/iam/InAppMessage;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v4

    .line 391
    .local v4, "rawMessage":Lcom/urbanairship/push/iam/InAppMessage;
    new-instance v6, Lcom/urbanairship/push/iam/InAppMessage$Builder;

    invoke-direct {v6, v4}, Lcom/urbanairship/push/iam/InAppMessage$Builder;-><init>(Lcom/urbanairship/push/iam/InAppMessage;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v1

    .line 394
    .local v1, "builder":Lcom/urbanairship/push/iam/InAppMessage$Builder;
    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage;->getClickActionValues()Ljava/util/Map;

    move-result-object v6

    const-string v7, "open_mc_action"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage;->getClickActionValues()Ljava/util/Map;

    move-result-object v6

    const-string v7, "^mc"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 397
    .local v2, "containsOpenMcAction":Z
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getRichPushMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v2, :cond_1

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage;->getClickActionValues()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 399
    .local v0, "actions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    const-string v6, "^mc"

    new-instance v7, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushMessage;->getRichPushMessageId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {v1, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 403
    .end local v0    # "actions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->create()Lcom/urbanairship/push/iam/InAppMessage;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 410
    .end local v1    # "builder":Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .end local v2    # "containsOpenMcAction":Z
    .end local v4    # "rawMessage":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_2
    :goto_1
    return-object v5

    .line 394
    .restart local v1    # "builder":Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .restart local v4    # "rawMessage":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 405
    .end local v1    # "builder":Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .end local v4    # "rawMessage":Lcom/urbanairship/push/iam/InAppMessage;
    :catch_0
    move-exception v3

    .line 406
    .local v3, "e":Lcom/urbanairship/json/JsonException;
    const-string v6, "PushMessage - unable to create in-app message from push payload"

    invoke-static {v6, v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getInteractiveActionsPayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.interactive_actions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteractiveNotificationType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.interactive_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 5

    .prologue
    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v3, "com.urbanairship.priority"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/urbanairship/util/UAMathUtil;->constrain(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 344
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPublicNotificationPayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.public_notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getRichPushMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "_uamid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.PUSH_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStylePayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.style"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.summary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v4, "com.urbanairship.visibility"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/urbanairship/util/UAMathUtil;->constrain(III)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 360
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getWearablePayload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.wearable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isExpired()Z
    .locals 8

    .prologue
    .line 186
    iget-object v4, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v5, "com.urbanairship.push.EXPIRATION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "expirationStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification expiration time is \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 190
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 191
    .local v2, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 192
    const/4 v4, 0x1

    .line 198
    .end local v2    # "expiration":J
    :goto_0
    return v4

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring malformed expiration time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 198
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isLocalOnly()Z
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v2, "com.urbanairship.local_only"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method isPing()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.PING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/urbanairship/push/PushMessage;->pushBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 426
    return-void
.end method
