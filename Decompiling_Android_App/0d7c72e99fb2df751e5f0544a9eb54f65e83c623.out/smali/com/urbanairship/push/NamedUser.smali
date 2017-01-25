.class public Lcom/urbanairship/push/NamedUser;
.super Ljava/lang/Object;
.source "NamedUser.java"


# static fields
.field private static final CHANGE_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

.field private static final LAST_UPDATED_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

.field private static final MAX_NAMED_USER_ID_LENGTH:I = 0x80

.field private static final NAMED_USER_ID_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.NAMED_USER_ID_KEY"


# instance fields
.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0
    .param p1, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 72
    return-void
.end method


# virtual methods
.method declared-synchronized disassociateNamedUserIfNull()V
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/NamedUser;->setId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceUpdate()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "NamedUser - force named user update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->updateChangeToken()V

    .line 89
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V

    .line 90
    return-void
.end method

.method getChangeToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastUpdatedToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setId(Ljava/lang/String;)V
    .locals 4
    .param p1, "namedUserId"    # Ljava/lang/String;

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    .line 102
    .local v0, "id":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_1

    .line 105
    :cond_0
    const-string v2, "Failed to set named user ID. The named user ID must be greater than 0 and less than 129 characters."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 115
    .local v1, "isEqual":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getChangeToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    invoke-virtual {v2, v3, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->updateChangeToken()V

    .line 121
    const-string v2, "NamedUser - Start service to update named user."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    .end local v1    # "isEqual":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 112
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 124
    .restart local v1    # "isEqual":Z
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NamedUser - Skipping update. Named user ID trimmed already matches existing named user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method setLastUpdatedToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method startUpdateService()V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    return-void
.end method

.method updateChangeToken()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method
