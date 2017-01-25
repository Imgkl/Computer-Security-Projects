.class public Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
.super Ljava/lang/Object;
.source "NamespacedPreferencesEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field private final mPrefs:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    .line 14
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->clear()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 24
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putBoolean(Ljava/lang/String;Z)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    return-object p0
.end method

.method public bridge synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # F

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putFloat(Ljava/lang/String;F)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 40
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 41
    return-object p0
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putInt(Ljava/lang/String;I)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    return-object p0
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putLong(Ljava/lang/String;J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    return-object p0
.end method

.method public bridge synthetic putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Set;

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
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
            "Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 66
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->remove(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    return-object p0
.end method

.method public setActionRepeatCount(JJ)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 5
    .param p1, "actionId"    # J
    .param p3, "value"    # J

    .prologue
    .line 103
    const-string v1, "action_repeat_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putLong(Ljava/lang/String;J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    return-object v1
.end method

.method public setDataDownloadRequired(Z)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 109
    const-string v0, "data_download_required"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putBoolean(Ljava/lang/String;Z)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public setVisitorGameScore(J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 76
    const-string/jumbo v0, "visitor_game_score"

    invoke-virtual {p0, v0, p1, p2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putLong(Ljava/lang/String;J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public setVisitorPassword(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "visitor_pass"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public setVisitorRecord(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string/jumbo v0, "visitor_object"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public setVisitorUsername(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v0, "visitor_uname"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public setWifiMd5(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v0, "wifi_settings_md5"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v0

    return-object v0
.end method
