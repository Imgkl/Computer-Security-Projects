.class public Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "GenieBaseFragment.java"


# instance fields
.field private mLoaderId:I

.field private final mRandom:Ljava/util/Random;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->mRandom:Ljava/util/Random;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->mLoaderId:I

    return-void
.end method

.method public static getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->mLoaderId:I

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->mLoaderId:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->mLoaderId:I

    return v0
.end method

.method public getProvider(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    return-object v0
.end method

.method public startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    return-void
.end method
