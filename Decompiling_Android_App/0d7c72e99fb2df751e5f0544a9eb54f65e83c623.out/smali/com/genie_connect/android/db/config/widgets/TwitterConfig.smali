.class public final Lcom/genie_connect/android/db/config/widgets/TwitterConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "TwitterConfig.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","


# instance fields
.field private final mOfficialExcludes:Ljava/lang/String;

.field private final mUnofficialIncludes:Ljava/lang/String;

.field private final mUser:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 47
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 48
    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUser:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "unofficialIncludes"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUnofficialIncludes:Ljava/lang/String;

    .line 50
    const-string v0, "officialExcludes"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mOfficialExcludes:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getDefaultTweetContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUser:Ljava/lang/String;

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUnofficialIncludes:Ljava/lang/String;

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->toStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/TwitterHelper;->getDefaultTweetContent(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfficialExcludes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mOfficialExcludes:Ljava/lang/String;

    return-object v0
.end method

.method public getUnnoficialSearchQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUnofficialIncludes:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUnofficialIncludes:Ljava/lang/String;

    const-string v2, ","

    const-string v3, " OR "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnofficialIncludes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUnofficialIncludes:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->mUser:Ljava/lang/String;

    return-object v0
.end method
