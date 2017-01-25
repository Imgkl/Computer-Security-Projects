.class public abstract Lcom/eventgenie/android/activities/base/GenieEntityListActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "GenieEntityListActivity.java"


# static fields
.field public static final HIDE_ACTIONBAR_EXTRA:Ljava/lang/String; = "hide_actionbar"

.field private static final LOADER_ID:I = 0x1


# instance fields
.field private mAssociatedEntities:[Ljava/lang/String;

.field private mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

.field private mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field private mEmptyView:Landroid/view/View;

.field private final mFilterTextWatcher:Landroid/text/TextWatcher;

.field private mListFilterTextBox:Landroid/widget/EditText;

.field private mListView:Landroid/widget/ListView;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mFilterTextWatcher:Landroid/text/TextWatcher;

    .line 92
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$2;-><init>(Lcom/eventgenie/android/activities/base/GenieEntityListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/base/GenieEntityListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieEntityListActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private hasAssociatedNonMyEventWidget()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupTextFilter()V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    if-ne v0, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->LOCKEDOUT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    sget v0, Lcom/eventgenie/android/R$id;->filter_segment:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    sget v0, Lcom/eventgenie/android/R$id;->edit_search:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListFilterTextBox:Landroid/widget/EditText;

    .line 279
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListFilterTextBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mFilterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListFilterTextBox:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Experimental Search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method protected getAssociatedEntities()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    return-object v0
.end method

.method protected getCorrespondingModule()Lcom/genie_connect/android/db/config/GenieMobileModule;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    return-object v0
.end method

.method protected getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getLoaderId()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected initCommonListElements()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->setupTextFilter()V

    .line 131
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListView:Landroid/widget/ListView;

    .line 132
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    .line 134
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 135
    const-string v2, "^ ENTITYLIST: Listview is null!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 141
    const-string v2, "hide_actionbar"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 144
    :cond_1
    const-string v2, "associated_non_my_event_widget"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/GenieWidget;

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 145
    const-string v2, "associated_entity_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v3, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 154
    :cond_3
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->hasAssociatedNonMyEventWidget()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v2, p0, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->isThisAFavouriteWidget()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 162
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v1, "syncFilter":Landroid/content/IntentFilter;
    const-string v2, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method protected abstract isFavouriteList()Z
.end method

.method protected isThisAFavouriteWidget()Z
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->hasAssociatedNonMyEventWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClearSearchClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListFilterTextBox:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 185
    return-void
.end method

.method protected abstract onFilterTextChanged(Ljava/lang/CharSequence;)V
.end method

.method protected abstract onLiveSyncCompleted()V
.end method

.method public onOpenAppropriateWidgetClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 196
    :cond_0
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->checkForUpdates()V

    .line 202
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->isThisAFavouriteWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->showIndicator(Z)V

    .line 205
    sget v0, Lcom/eventgenie/android/R$string;->message_synchronising:I

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getAssociatedEntities()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 217
    const-string v1, "associated_entity_name"

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mAssociatedEntities:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    :cond_0
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method protected setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/BaseConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$menu;->home:I

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->addOverflowMenu(I)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "^ ENTIYLIST: Config is null!"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setupEmptyViewForNoFavs(I)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->setupEmptyViewForNoFavs(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setupEmptyViewForNoFavs(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 248
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewTextOnly(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->setupEmptyViewTextOnly(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected setupEmptyViewTextOnly(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method protected showIndicator(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 287
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 288
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->showIndicator(ZZ)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    instance-of v2, v0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 290
    check-cast v1, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .line 291
    .local v1, "parentActivity":Lcom/eventgenie/android/activities/base/GenieTabActivity;
    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->showIndicator(Z)V

    goto :goto_0
.end method
