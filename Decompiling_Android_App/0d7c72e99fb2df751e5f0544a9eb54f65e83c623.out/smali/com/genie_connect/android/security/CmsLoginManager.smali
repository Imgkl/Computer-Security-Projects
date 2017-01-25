.class public Lcom/genie_connect/android/security/CmsLoginManager;
.super Lcom/genie_connect/android/security/BaseLoginManager;
.source "CmsLoginManager.java"


# instance fields
.field private final mSelectedServerSet:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectedServerSet"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/genie_connect/android/security/BaseLoginManager;-><init>(Landroid/content/Context;)V

    .line 21
    iput p2, p0, Lcom/genie_connect/android/security/CmsLoginManager;->mSelectedServerSet:I

    .line 22
    return-void
.end method

.method public static getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Lcom/genie_connect/android/security/CmsLoginManager;

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/ReachabilityManager;->getSelectedServerSet()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/genie_connect/android/security/CmsLoginManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCMSUserAuthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LOGINMANAGER: Getting CMS User credentials. Comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/security/CmsLoginManager;->getAuthString(Lcom/genie_connect/android/net/container/LoginCredentials;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCMSUserCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 33
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/genie_connect/android/security/CmsLoginManager;->mSelectedServerSet:I

    invoke-static {v4, v6}, Lcom/genie_connect/android/prefs/PreferencesManager;->getAdminPreferences(Landroid/content/Context;I)Lcom/genie_connect/android/prefs/AdminPreferences;

    move-result-object v1

    .line 36
    .local v1, "prefs":Lcom/genie_connect/android/prefs/AdminPreferences;
    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/AdminPreferences;->getCmsUsername()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "prefs_username":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/AdminPreferences;->getCmsPassword()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 41
    .local v2, "prefs_password":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 42
    invoke-virtual {p0, v3}, Lcom/genie_connect/android/security/CmsLoginManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lcom/genie_connect/android/security/CmsLoginManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    new-instance v4, Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-direct {v4, v3, v2}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_0
    move-object v4, v5

    .line 44
    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 50
    goto :goto_0

    .line 58
    :cond_2
    :try_start_2
    const-string v4, "^ LOGINMANAGER: Final check error."

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v5

    .line 59
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LOGINMANAGER: Exception while reading credentials: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    .line 66
    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "prefs":Lcom/genie_connect/android/prefs/AdminPreferences;
    .end local v2    # "prefs_password":Ljava/lang/String;
    .end local v3    # "prefs_username":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isCMSUserAuthenticated()Z
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/security/CmsLoginManager;->getAuthString(Lcom/genie_connect/android/net/container/LoginCredentials;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 72
    .local v0, "auth_string":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 71
    .end local v0    # "auth_string":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCMSUserCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V
    .locals 7
    .param p1, "cred"    # Lcom/genie_connect/android/net/container/LoginCredentials;

    .prologue
    .line 76
    monitor-enter p0

    const/4 v4, 0x0

    .line 77
    .local v4, "enc_uname":Ljava/lang/String;
    const/4 v3, 0x0

    .line 79
    .local v3, "enc_pass":Ljava/lang/String;
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 81
    .local v0, "doBlank":Z
    :goto_0
    if-nez v0, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/security/CmsLoginManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/LoginCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/security/CmsLoginManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 86
    const/4 v0, 0x0

    .line 94
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 95
    :try_start_1
    const-string v5, "^ LOGINMANAGER: Removing CMS Credentials"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 96
    const-string v3, ""

    .line 97
    const-string v4, ""

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/genie_connect/android/security/CmsLoginManager;->mSelectedServerSet:I

    invoke-static {v5, v6}, Lcom/genie_connect/android/prefs/PreferencesManager;->getAdminPreferences(Landroid/content/Context;I)Lcom/genie_connect/android/prefs/AdminPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/prefs/AdminPreferences;->edit()Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v2

    .line 104
    .local v2, "editor":Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    invoke-virtual {v2, v3}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->setCmsPassword(Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    .line 105
    invoke-virtual {v2, v4}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->setCmsUsername(Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    .line 107
    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 79
    .end local v0    # "doBlank":Z
    .end local v2    # "editor":Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    .restart local v0    # "doBlank":Z
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LOGINMANAGER: Error encypting uname/pass for CMS User: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const/4 v0, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized signOut()V
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->setGuestModeEnabled(Z)V

    .line 113
    new-instance v1, Lcom/genie_connect/android/net/container/LoginCredentials;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/security/CmsLoginManager;->setCMSUserCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eventgenie.android.USER_LOGOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
