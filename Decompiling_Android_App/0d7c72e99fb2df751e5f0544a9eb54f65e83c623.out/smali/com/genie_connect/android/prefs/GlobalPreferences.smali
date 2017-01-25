.class public Lcom/genie_connect/android/prefs/GlobalPreferences;
.super Ljava/lang/Object;
.source "GlobalPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field protected static final PREFS_CURRENT_APP_SERVER_SET:Ljava/lang/String; = "current_app_serverset"

.field protected static final PREFS_FIRST_RUN:Ljava/lang/String; = "prefs_first_run"

.field protected static final PREFS_LOCAL_UID:Ljava/lang/String; = "local_uid"

.field protected static final PREFS_PROOFER_APPS_LIST_MODE:Ljava/lang/String; = "proofer_apps_list_mode"

.field protected static final PREFS_PROOFER_MODE_LIVE:Ljava/lang/String; = "proofer_mode_live"

.field protected static final PREFS_SEND_TO_PEBBLE:Ljava/lang/String; = "send_to_pebble"


# instance fields
.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    iget-object v1, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCurrentServerSet(I)I
    .locals 2
    .param p1, "fallback"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "current_app_serverset"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLocalUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fallback"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "local_uid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProoferListMode(I)I
    .locals 2
    .param p1, "fallback"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "proofer_apps_list_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAutoUpdateEnabled()Z
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_update"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstRun()Z
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs_first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocalUUIDSet()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "local_uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProoferLiveModeEnabled()Z
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "proofer_mode_live"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSendToPebbleEnabled()Z
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "send_to_pebble"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 113
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/genie_connect/android/prefs/GlobalPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 118
    return-void
.end method
