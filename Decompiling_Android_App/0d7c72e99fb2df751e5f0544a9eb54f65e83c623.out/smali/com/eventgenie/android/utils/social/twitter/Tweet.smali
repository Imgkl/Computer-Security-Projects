.class public Lcom/eventgenie/android/utils/social/twitter/Tweet;
.super Ljava/lang/Object;
.source "Tweet.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWITTER_CREATED_AT:Ljava/lang/String; = "createdAt"

.field private static final TWITTER_ID:Ljava/lang/String; = "id"

.field private static final TWITTER_IS_FAVOURTITED:Ljava/lang/String; = "isFavourited"

.field private static final TWITTER_IS_RETWEETED:Ljava/lang/String; = "isRetweeted"

.field private static final TWITTER_IS_RETWEETED_BY_ME:Ljava/lang/String; = "isRetweetedByMe"

.field private static final TWITTER_PROFILE_URL:Ljava/lang/String; = "profileImageUrl"

.field private static final TWITTER_STATUS:Ljava/lang/String; = "status"

.field private static final TWITTER_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TWITTER_USER:Ljava/lang/String; = "user"

.field private static final TWITTER_USER_NAME:Ljava/lang/String; = "userName"


# instance fields
.field private final mCreatedAt:Ljava/lang/String;

.field private final mId:J

.field private final mIsFavourited:Z

.field private final mIsRetweeted:Z

.field private final mIsRetweetedByMe:Z

.field private final mProfileImageUrl:Ljava/net/URI;

.field private final mStatus:Ljava/lang/String;

.field private final mTimestamp:J

.field private final mUser:Ljava/lang/String;

.field private final mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/eventgenie/android/utils/social/twitter/Tweet$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltwitter4j/Status;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Ltwitter4j/Status;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-interface {p2}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUser:Ljava/lang/String;

    .line 53
    invoke-interface {p2}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUserName:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getInstance(Landroid/content/Context;)Lcom/eventgenie/android/utils/social/StatusDateUtils;

    move-result-object v0

    invoke-interface {p2}, Ltwitter4j/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getTimeDiffString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mCreatedAt:Ljava/lang/String;

    .line 55
    invoke-interface {p2}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mStatus:Ljava/lang/String;

    .line 56
    invoke-interface {p2}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/User;->getProfileImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mProfileImageUrl:Ljava/net/URI;

    .line 57
    invoke-interface {p2}, Ltwitter4j/Status;->isRetweet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweeted:Z

    .line 58
    invoke-interface {p2}, Ltwitter4j/Status;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mId:J

    .line 59
    invoke-interface {p2}, Ltwitter4j/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    .line 60
    invoke-interface {p2}, Ltwitter4j/Status;->isRetweetedByMe()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweetedByMe:Z

    .line 61
    invoke-interface {p2}, Ltwitter4j/Status;->isFavorited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsFavourited:Z

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUser:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUserName:Ljava/lang/String;

    .line 104
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mCreatedAt:Ljava/lang/String;

    .line 105
    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mStatus:Ljava/lang/String;

    .line 106
    const-string v1, "profileImageUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mProfileImageUrl:Ljava/net/URI;

    .line 107
    const-string v1, "isRetweeted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweeted:Z

    .line 108
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mId:J

    .line 109
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    .line 110
    const-string v1, "isRetweetedByMe"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweetedByMe:Z

    .line 111
    const-string v1, "isFavourited"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsFavourited:Z

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/twitter/Tweet$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/twitter/Tweet$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "map"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUser:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "userName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUserName:Ljava/lang/String;

    .line 89
    const-string v0, "createdAt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mCreatedAt:Ljava/lang/String;

    .line 90
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mStatus:Ljava/lang/String;

    .line 91
    const-string v0, "profileImageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mProfileImageUrl:Ljava/net/URI;

    .line 92
    const-string v0, "isRetweeted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweeted:Z

    .line 93
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mId:J

    .line 94
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    .line 95
    const-string v0, "isRetweetedByMe"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweetedByMe:Z

    .line 96
    const-string v0, "isFavourited"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsFavourited:Z

    .line 97
    return-void
.end method

.method private static getURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v1, v2

    .line 220
    goto :goto_0

    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_0
    move-object v1, v2

    .line 223
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/eventgenie/android/utils/social/twitter/Tweet;)I
    .locals 4
    .param p1, "another"    # Lcom/eventgenie/android/utils/social/twitter/Tweet;

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    iget-wide v2, p1, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    const/4 v0, -0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->compareTo(Lcom/eventgenie/android/utils/social/twitter/Tweet;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mCreatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mId:J

    return-wide v0
.end method

.method public getProfileImageUrl()Ljava/net/URI;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mProfileImageUrl:Ljava/net/URI;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    return-wide v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isFavourited()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsFavourited:Z

    return v0
.end method

.method public isRetweeted()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweeted:Z

    return v0
.end method

.method public isRetweetedByMe()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mIsRetweetedByMe:Z

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "user"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "createdAt"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "profileImageUrl"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getProfileImageUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v1, "userName"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "isRetweeted"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->isRetweeted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "isRetweetedByMe"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->isRetweetedByMe()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "isFavourited"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->isFavourited()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    const-string/jumbo v1, "user"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "createdAt"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getCreatedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "profileImageUrl"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getProfileImageUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "userName"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "isRetweeted"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->isRetweeted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    const-string v1, "isRetweetedByMe"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->isRetweetedByMe()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v1, "isFavourited"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->isFavourited()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcom/eventgenie/android/utils/social/twitter/Tweet;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method
