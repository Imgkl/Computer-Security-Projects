.class public Lcom/urbanairship/richpush/RichPushUser;
.super Ljava/lang/Object;
.source "RichPushUser.java"


# instance fields
.field preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 1
    .param p1, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-direct {v0, p1}, Lcom/urbanairship/richpush/RichPushUserPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    .line 44
    return-void
.end method

.method public static isCreated()Z
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 53
    .local v0, "airship":Lcom/urbanairship/UAirship;
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "userId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "userToken":Ljava/lang/String;
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastMessageRefreshTime()J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->getLastMessageRefreshTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getLastUpdateTime()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->getLastUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setLastMessageRefreshTime(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    .line 128
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/richpush/RichPushUserPreferences;->setLastMessageRefreshTime(J)V

    .line 129
    return-void
.end method

.method setLastUpdateTime(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    .line 110
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/richpush/RichPushUserPreferences;->setLastUpdateTime(J)V

    .line 111
    return-void
.end method

.method setUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userToken"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichPushUser - Setting Rich Push user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/richpush/RichPushUserPreferences;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushUser;->setLastMessageRefreshTime(J)V

    .line 70
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    const-string v0, "RichPushUser - Unable to update user. Missing user ID or token."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method
