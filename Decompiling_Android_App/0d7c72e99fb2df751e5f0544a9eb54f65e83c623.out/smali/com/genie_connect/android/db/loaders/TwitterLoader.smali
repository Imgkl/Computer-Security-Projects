.class public Lcom/genie_connect/android/db/loaders/TwitterLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "TwitterLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/eventgenie/android/utils/social/NetworkResultSocial;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CACHE_GROUP:Ljava/lang/String; = "twitter"

.field public static final EXECUTION_MODE_EXTRA:Ljava/lang/String; = "execution_mode_extra"

.field public static final FORCE_FROM_CACHE_EXTRA:Ljava/lang/String; = "force_from_cache_extra"

.field private static final MODE_BOTH:I = 0x2

.field private static final MODE_SEARCH:I = 0x1

.field private static final MODE_USER:I = 0x0

.field public static final PARAMETER_1_EXTRA:Ljava/lang/String; = "param_1_mode"

.field public static final PARAMETER_2_EXTRA:Ljava/lang/String; = "param_2_mode"


# instance fields
.field private final _id:I

.field private final mMode:I

.field private final mParam:Ljava/lang/String;

.field private final mParam2:Ljava/lang/String;

.field private final mPreferCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/genie_connect/android/db/loaders/TwitterLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mode"    # I
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "preferCache"    # Z
    .param p6, "num"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 79
    iput p2, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    .line 80
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mParam:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mParam2:Ljava/lang/String;

    .line 82
    iput-boolean p5, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mPreferCache:Z

    .line 83
    iput p6, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->_id:I

    .line 84
    sget-boolean v0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method private cacheGetKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "temp_twitter#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheRead()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 92
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v8

    const-string/jumbo v9, "twitter"

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "cache":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 97
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 102
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 103
    .local v4, "o":Lorg/json/JSONObject;
    new-instance v6, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-direct {v6, v4}, Lcom/eventgenie/android/utils/social/twitter/Tweet;-><init>(Lorg/json/JSONObject;)V

    .line 104
    .local v6, "t":Lcom/eventgenie/android/utils/social/twitter/Tweet;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "o":Lorg/json/JSONObject;
    .end local v6    # "t":Lcom/eventgenie/android/utils/social/twitter/Tweet;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v7

    .line 114
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    :cond_0
    :goto_1
    return-object v5

    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    :cond_1
    move-object v5, v7

    goto :goto_1
.end method

.method private cacheWrite(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 119
    .local v0, "j":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v1

    const-string/jumbo v2, "twitter"

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    return-void
.end method

.method private getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method private getTwitterManager()Lcom/eventgenie/android/utils/managers/TwitterManager;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/EventGenieApplication;

    invoke-virtual {v0}, Lcom/eventgenie/android/EventGenieApplication;->getTwitterManager()Lcom/eventgenie/android/utils/managers/TwitterManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/eventgenie/android/utils/social/NetworkResultSocial;
    .locals 14

    .prologue
    .line 135
    iget-boolean v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mPreferCache:Z

    if-eqz v10, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, "model":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    if-eqz v3, :cond_0

    .line 138
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v3}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(ZLjava/util/List;)V

    .line 200
    :goto_0
    return-object v10

    .line 143
    .end local v3    # "model":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 145
    .restart local v3    # "model":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    if-eqz v3, :cond_1

    .line 146
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v3}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(ZLjava/util/List;)V

    goto :goto_0

    .line 148
    :cond_1
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v10, v11, v12}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(ZLjava/util/List;)V

    goto :goto_0

    .line 151
    .end local v3    # "model":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .restart local v3    # "model":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "cached":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getTwitterManager()Lcom/eventgenie/android/utils/managers/TwitterManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getTwitterObject()Ltwitter4j/Twitter;

    move-result-object v9

    .line 159
    .local v9, "twitter":Ltwitter4j/Twitter;
    if-nez v9, :cond_3

    .line 160
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(Z)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 197
    .end local v0    # "cached":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v9    # "twitter":Ltwitter4j/Twitter;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ltwitter4j/TwitterException;
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/eventgenie/android/R$string;->twitter_account_fail:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v1    # "e":Ltwitter4j/TwitterException;
    .restart local v0    # "cached":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v9    # "twitter":Ltwitter4j/Twitter;
    :cond_3
    :try_start_1
    iget v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 164
    :cond_4
    iget-object v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mParam:Ljava/lang/String;

    new-instance v11, Ltwitter4j/Paging;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v11, v12, v13}, Ltwitter4j/Paging;-><init>(II)V

    invoke-interface {v9, v10, v11}, Ltwitter4j/Twitter;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v5

    .line 167
    .local v5, "statuses":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltwitter4j/Status;

    .line 168
    .local v7, "tweet":Ltwitter4j/Status;
    new-instance v6, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v7}, Lcom/eventgenie/android/utils/social/twitter/Tweet;-><init>(Landroid/content/Context;Ltwitter4j/Status;)V

    .line 170
    .local v6, "t":Lcom/eventgenie/android/utils/social/twitter/Tweet;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->toJSON()Lorg/json/JSONObject;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 199
    .end local v0    # "cached":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "statuses":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    .end local v6    # "t":Lcom/eventgenie/android/utils/social/twitter/Tweet;
    .end local v7    # "tweet":Ltwitter4j/Status;
    .end local v9    # "twitter":Ltwitter4j/Twitter;
    :catch_1
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Twitter failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "cached":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v9    # "twitter":Ltwitter4j/Twitter;
    :cond_5
    :try_start_2
    iget v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 179
    :cond_6
    iget v10, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    .line 180
    new-instance v10, Ltwitter4j/Query;

    iget-object v11, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mParam:Ljava/lang/String;

    invoke-direct {v10, v11}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v4

    .line 185
    .local v4, "result":Ltwitter4j/QueryResult;
    :goto_2
    invoke-interface {v4}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v8

    .line 187
    .local v8, "tweets":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltwitter4j/Status;

    .line 188
    .restart local v7    # "tweet":Ltwitter4j/Status;
    new-instance v6, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v7}, Lcom/eventgenie/android/utils/social/twitter/Tweet;-><init>(Landroid/content/Context;Ltwitter4j/Status;)V

    .line 190
    .restart local v6    # "t":Lcom/eventgenie/android/utils/social/twitter/Tweet;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/twitter/Tweet;->toJSON()Lorg/json/JSONObject;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 182
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Ltwitter4j/QueryResult;
    .end local v6    # "t":Lcom/eventgenie/android/utils/social/twitter/Tweet;
    .end local v7    # "tweet":Ltwitter4j/Status;
    .end local v8    # "tweets":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Status;>;"
    :cond_7
    new-instance v10, Ltwitter4j/Query;

    iget-object v11, p0, Lcom/genie_connect/android/db/loaders/TwitterLoader;->mParam2:Ljava/lang/String;

    invoke-direct {v10, v11}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v4

    .restart local v4    # "result":Ltwitter4j/QueryResult;
    goto :goto_2

    .line 194
    .end local v4    # "result":Ltwitter4j/QueryResult;
    :cond_8
    invoke-direct {p0, v0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->cacheWrite(Ljava/util/List;)V

    .line 195
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    new-instance v10, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v3}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;-><init>(ZLjava/util/List;)V
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->loadInBackground()Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    move-result-object v0

    return-object v0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/TwitterLoader;->cancelLoad()Z

    .line 208
    return-void
.end method
