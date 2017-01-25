.class public Lcom/genie_connect/android/prefs/NamespacedPreferences;
.super Ljava/lang/Object;
.source "NamespacedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field protected static final DATA_DOWNLOAD_REQUIRED:Ljava/lang/String; = "data_download_required"

.field protected static final PREFS_ACTION_REPEAT_FORMAT:Ljava/lang/String; = "action_repeat_%s"

.field protected static final PREFS_VISITOR_GAME_SCORE:Ljava/lang/String; = "visitor_game_score"

.field protected static final PREFS_VISITOR_OBJECT:Ljava/lang/String; = "visitor_object"

.field protected static final PREFS_VISITOR_PASSWORD:Ljava/lang/String; = "visitor_pass"

.field protected static final PREFS_VISITOR_USERNAME:Ljava/lang/String; = "visitor_uname"

.field protected static final PREFS_WIFI_SETTINGS_MD5:Ljava/lang/String; = "wifi_settings_md5"


# instance fields
.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 24
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    iget-object v1, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public getActionRepeatCount(J)J
    .locals 5
    .param p1, "actionId"    # J

    .prologue
    .line 117
    const-string v1, "action_repeat_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
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
    .line 45
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

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
    .line 51
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

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
    .line 57
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

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
    .line 63
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
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
    .line 82
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVisitorGameScore()J
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "visitor_game_score"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVisitorPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "visitor_pass"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisitorRecord()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "visitor_object"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisitorUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "visitor_uname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiMd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wifi_settings_md5"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDataDownloadRequired()Z
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "data_download_required"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 131
    return-void
.end method
