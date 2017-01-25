.class public Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SharedPreferencesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->prefs:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method public static persist(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader$1;

    invoke-direct {v0, p0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader$1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    .line 38
    invoke-virtual {v0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader$1;->run()V

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->prefs:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->loadInBackground()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->deliverResult(Ljava/lang/Object;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/commonsware/cwac/loaderex/acl/SharedPreferencesLoader;->forceLoad()V

    .line 74
    :cond_2
    return-void
.end method
