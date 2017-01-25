.class final Ltwitter4j/internal/json/DirectMessageJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "DirectMessageJSONImpl.java"

# interfaces
.implements Ltwitter4j/DirectMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x62974ee09dd34a09L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private recipient:Ltwitter4j/User;

.field private recipientId:J

.field private recipientScreenName:Ljava/lang/String;

.field private sender:Ltwitter4j/User;

.field private senderId:J

.field private senderScreenName:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 54
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 55
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 57
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 62
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 63
    return-void
.end method

.method static createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 9
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 239
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 240
    .local v5, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 241
    .local v6, "size":I
    new-instance v1, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 242
    .local v1, "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 243
    invoke-virtual {v5, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 244
    .local v3, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v0, Ltwitter4j/internal/json/DirectMessageJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/internal/json/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 245
    .local v0, "directMessage":Ltwitter4j/DirectMessage;
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 247
    invoke-static {v0, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "directMessage":Ltwitter4j/DirectMessage;
    .end local v3    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    invoke-static {v1, v5}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :cond_3
    return-object v1

    .line 254
    .end local v1    # "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    .end local v2    # "i":I
    .end local v5    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v6    # "size":I
    :catch_0
    move-exception v4

    .line 255
    .local v4, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 256
    .end local v4    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v7

    .line 257
    .local v7, "te":Ltwitter4j/TwitterException;
    throw v7
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 13
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v8, "id"

    invoke-static {v8, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v8

    iput-wide v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    .line 67
    const-string v8, "sender_id"

    invoke-static {v8, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v8

    iput-wide v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderId:J

    .line 68
    const-string v8, "recipient_id"

    invoke-static {v8, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v8

    iput-wide v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientId:J

    .line 69
    const-string v8, "created_at"

    invoke-static {v8, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    .line 70
    const-string v8, "sender_screen_name"

    invoke-static {v8, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    .line 71
    const-string v8, "recipient_screen_name"

    invoke-static {v8, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    .line 73
    :try_start_0
    new-instance v8, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v9, "sender"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    .line 74
    new-instance v8, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v9, "recipient"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    .line 75
    const-string v8, "entities"

    invoke-virtual {p1, v8}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 76
    const-string v8, "entities"

    invoke-virtual {p1, v8}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "entities":Ltwitter4j/internal/org/json/JSONObject;
    const-string v8, "user_mentions"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 79
    const-string v8, "user_mentions"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v7

    .line 80
    .local v7, "userMentionsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v7}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 81
    .local v4, "len":I
    new-array v8, v4, [Ltwitter4j/UserMentionEntity;

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 83
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v9, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;

    invoke-virtual {v7, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v9, v8, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v7    # "userMentionsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    const-string v8, "urls"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 88
    const-string v8, "urls"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v6

    .line 89
    .local v6, "urlsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v6}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 90
    .restart local v4    # "len":I
    new-array v8, v4, [Ltwitter4j/URLEntity;

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 91
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 92
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v9, Ltwitter4j/internal/json/URLEntityJSONImpl;

    invoke-virtual {v6, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/URLEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v9, v8, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "urlsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_1
    const-string v8, "hashtags"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 97
    const-string v8, "hashtags"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 98
    .local v1, "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 99
    .restart local v4    # "len":I
    new-array v8, v4, [Ltwitter4j/HashtagEntity;

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 100
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 101
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v9, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v9, v8, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    .end local v1    # "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_2
    const-string v8, "media"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 106
    const-string v8, "media"

    invoke-virtual {v0, v8}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 107
    .local v5, "mediaArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 108
    .restart local v4    # "len":I
    new-array v8, v4, [Ltwitter4j/MediaEntity;

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 109
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_3

    .line 110
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v9, Ltwitter4j/internal/json/MediaEntityJSONImpl;

    invoke-virtual {v5, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/MediaEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v9, v8, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 114
    .end local v0    # "entities":Ltwitter4j/internal/org/json/JSONObject;
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "mediaArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_3
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v8, :cond_4

    const/4 v8, 0x0

    new-array v8, v8, [Ltwitter4j/UserMentionEntity;

    :goto_4
    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 115
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v8, :cond_5

    const/4 v8, 0x0

    new-array v8, v8, [Ltwitter4j/URLEntity;

    :goto_5
    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 116
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v8, :cond_6

    const/4 v8, 0x0

    new-array v8, v8, [Ltwitter4j/HashtagEntity;

    :goto_6
    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 117
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v8, :cond_7

    const/4 v8, 0x0

    new-array v8, v8, [Ltwitter4j/MediaEntity;

    :goto_7
    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 118
    const-string v8, "text"

    invoke-virtual {p1, v8}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v10, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v11, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v12, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v8, v9, v10, v11, v12}, Ltwitter4j/internal/json/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->text:Ljava/lang/String;

    .line 123
    return-void

    .line 114
    :cond_4
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    goto :goto_4

    .line 115
    :cond_5
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    goto :goto_5

    .line 116
    :cond_6
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    goto :goto_6

    .line 117
    :cond_7
    iget-object v8, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_1

    move v0, v1

    .line 274
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 271
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 274
    instance-of v2, p1, Ltwitter4j/DirectMessage;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/DirectMessage;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/DirectMessage;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    return-wide v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getRecipient()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    return-object v0
.end method

.method public getRecipientId()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientId:J

    return-wide v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    return-object v0
.end method

.method public getSenderId()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderId:J

    return-wide v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectMessageJSONImpl{id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", created_at="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender_screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient_screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v2, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_5
.end method
