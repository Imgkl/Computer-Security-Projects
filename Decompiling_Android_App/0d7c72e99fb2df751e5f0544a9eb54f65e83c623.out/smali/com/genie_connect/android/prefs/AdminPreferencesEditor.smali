.class public Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
.super Ljava/lang/Object;
.source "AdminPreferencesEditor.java"

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
    iput-object p1, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    .line 14
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->clear()Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 24
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putBoolean(Ljava/lang/String;Z)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putFloat(Ljava/lang/String;F)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 40
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putInt(Ljava/lang/String;I)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putLong(Ljava/lang/String;J)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
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
            "Lcom/genie_connect/android/prefs/AdminPreferencesEditor;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 66
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->remove(Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->mPrefs:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    return-object p0
.end method

.method public setCmsPassword(Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "user_pass"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method

.method public setCmsUsername(Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string/jumbo v0, "user_uname"

    invoke-virtual {p0, v0, p1}, Lcom/genie_connect/android/prefs/AdminPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/AdminPreferencesEditor;

    move-result-object v0

    return-object v0
.end method
