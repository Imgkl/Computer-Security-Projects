.class public Lcom/urbanairship/richpush/RichPushMessage;
.super Ljava/lang/Object;
.source "RichPushMessage.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/urbanairship/richpush/RichPushMessage;",
        ">;"
    }
.end annotation


# instance fields
.field deleted:Z

.field expirationMS:Ljava/lang/Long;

.field extras:Landroid/os/Bundle;

.field messageBodyUrl:Ljava/lang/String;

.field messageId:Ljava/lang/String;

.field messageReadUrl:Ljava/lang/String;

.field messageUrl:Ljava/lang/String;

.field rawMessageJSON:Lorg/json/JSONObject;

.field sentMS:J

.field title:Ljava/lang/String;

.field unreadClient:Z

.field unreadOrigin:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 70
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 356
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 357
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    .line 360
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getInbox()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v0

    return-object v0
.end method

.method static getMillisecondsFromTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p0, "timeStamp"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    .end local p1    # "defaultValue":Ljava/lang/Long;
    :goto_0
    return-object p1

    .line 115
    .restart local p1    # "defaultValue":Ljava/lang/Long;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/util/DateUtils;->parseIso8601(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RichPushMessage - Couldn\'t parse message date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaulting to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method static messageFromCursor(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    new-instance v1, Lcom/urbanairship/richpush/RichPushMessage;

    const-string v4, "message_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/urbanairship/richpush/RichPushMessage;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    const-string v4, "message_url"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    .line 80
    const-string v4, "message_body_url"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    .line 81
    const-string v4, "message_read_url"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    .line 82
    const-string v4, "unread"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 85
    const-string v4, "unread_orig"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->unreadOrigin:Z

    .line 87
    new-instance v4, Lorg/json/JSONObject;

    const-string v7, "extra"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/urbanairship/richpush/RichPushMessage;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    .line 89
    const-string v4, "title"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    .line 92
    const-string v4, "timestamp"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "timeStamp":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/urbanairship/richpush/RichPushMessage;->getMillisecondsFromTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    .line 95
    const-string v4, "deleted"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_2

    :goto_2
    iput-boolean v5, v1, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 98
    const-string v4, "raw_message_object"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "rawMessageJSON":Ljava/lang/String;
    if-nez v2, :cond_3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->rawMessageJSON:Lorg/json/JSONObject;

    .line 101
    const-string v4, "expiration_timestamp"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "expiryTimeStamp":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/urbanairship/richpush/RichPushMessage;->getMillisecondsFromTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    .line 104
    return-object v1

    .end local v0    # "expiryTimeStamp":Ljava/lang/String;
    .end local v2    # "rawMessageJSON":Ljava/lang/String;
    .end local v3    # "timeStamp":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 82
    goto/16 :goto_0

    :cond_1
    move v4, v6

    .line 85
    goto :goto_1

    .restart local v3    # "timeStamp":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 95
    goto :goto_2

    .line 99
    .restart local v2    # "rawMessageJSON":Ljava/lang/String;
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public compareTo(Lcom/urbanairship/richpush/RichPushMessage;)I
    .locals 2
    .param p1, "another"    # Lcom/urbanairship/richpush/RichPushMessage;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushMessage;->compareTo(Lcom/urbanairship/richpush/RichPushMessage;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-nez v1, :cond_0

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 285
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 287
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->deleteMessages(Ljava/util/Set;)V

    .line 291
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/urbanairship/richpush/RichPushMessage;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 330
    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object v0, p1

    .line 324
    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    .line 326
    .local v0, "that":Lcom/urbanairship/richpush/RichPushMessage;
    if-eq p0, v0, :cond_1

    .line 330
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v3, v4}, Lcom/urbanairship/richpush/RichPushMessage;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    iget-boolean v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    iget-wide v6, v0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpirationDateMS()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMessageBodyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageBodyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageReadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageReadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRawMessageJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->rawMessageJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSentDateMS()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->sentMS:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    const/16 v0, 0x11

    .line 342
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x275

    .line 343
    mul-int/lit8 v1, v0, 0x25

    iget-boolean v4, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 344
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    .line 342
    goto :goto_0

    :cond_1
    move v2, v3

    .line 343
    goto :goto_1
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->expirationMS:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markRead()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 257
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->markMessagesRead(Ljava/util/Set;)V

    .line 263
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public markUnread()V
    .locals 2

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-nez v1, :cond_0

    .line 270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 271
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushMessage;->getInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->markMessagesUnread(Ljava/util/Set;)V

    .line 277
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
