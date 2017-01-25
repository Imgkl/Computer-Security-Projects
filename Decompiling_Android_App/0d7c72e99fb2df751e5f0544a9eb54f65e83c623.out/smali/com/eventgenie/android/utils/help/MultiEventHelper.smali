.class public Lcom/eventgenie/android/utils/help/MultiEventHelper;
.super Ljava/lang/Object;
.source "MultiEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;,
        Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private mSelectedAppId:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    .line 77
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/MultiEventHelper;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/MultiEventHelper;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/utils/help/MultiEventHelper;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/MultiEventHelper;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->loadEvent(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/utils/help/MultiEventHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/MultiEventHelper;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/utils/help/MultiEventHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/help/MultiEventHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->startAppInitService(Ljava/lang/String;)V

    return-void
.end method

.method private static getCurrentVersionPrefsKey(I)Ljava/lang/String;
    .locals 3
    .param p0, "instance"    # I

    .prologue
    .line 200
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/AppConfig;

    .line 201
    .local v0, "config":Lcom/genie_connect/android/db/config/AppConfig;
    if-nez p0, :cond_0

    .line 202
    const-string v1, "current_version"

    .line 204
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "current_version_secondary"

    goto :goto_0
.end method

.method public static getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAppSwitchableNow(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->areAnyDataServicesRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadEvent(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "appsCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string v2, "app"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J

    .line 87
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 91
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getSecondaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    .line 94
    .local v1, "secondConfig":Lcom/genie_connect/android/db/config/AppConfig;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 104
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 105
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 125
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v1    # "secondConfig":Lcom/genie_connect/android/db/config/AppConfig;
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v4, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getConfirmMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_yes:I

    new-instance v4, Lcom/eventgenie/android/utils/help/MultiEventHelper$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper$2;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_no:I

    new-instance v4, Lcom/eventgenie/android/utils/help/MultiEventHelper$1;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper$1;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static onMultiEventReturnClick(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 234
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->resetMultiEvent(Landroid/app/Activity;)V

    .line 235
    return-void
.end method

.method private static resetMultiEvent(Landroid/app/Activity;)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 240
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method private startAppInitService(Ljava/lang/String;)V
    .locals 4
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "extra_dataversion"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "extra_reset_mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 135
    return-void
.end method


# virtual methods
.method public getParentMultiEventSelectorConfig()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v0

    return-object v0
.end method

.method public tryToChangeEvent(J)V
    .locals 3
    .param p1, "appNamespace"    # J

    .prologue
    .line 184
    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 185
    .local v0, "appsCursor":Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MULTI: tryToChangeEvent() - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 187
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MULTI: tryToChangeEvent() - db cursor is invalid! ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 189
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->tryToChangeEvent(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public tryToChangeEvent(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "appsCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    const-string v5, "isAvailable"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    .line 141
    .local v2, "isAvailable":Z
    :goto_0
    if-nez v2, :cond_4

    .line 142
    const-string v5, "isUsingHoldingPage"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 143
    .local v3, "isUsingHoldingPage":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 144
    const-string v4, "holdingPageHTML"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "holdingPageHTML":Ljava/lang/String;
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 148
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "extra_html"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v4, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 181
    .end local v0    # "holdingPageHTML":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "isUsingHoldingPage":Z
    :goto_2
    return-void

    .end local v2    # "isAvailable":Z
    :cond_0
    move v2, v4

    .line 139
    goto :goto_0

    .restart local v2    # "isAvailable":Z
    :cond_1
    move v3, v4

    .line 142
    goto :goto_1

    .line 154
    .restart local v3    # "isUsingHoldingPage":Z
    :cond_2
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-static {v5, v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->canIAccess(Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v7, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getUnavailableMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v6, Lcom/eventgenie/android/utils/help/MultiEventHelper$4;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper$4;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Load Anyway"

    new-instance v6, Lcom/eventgenie/android/utils/help/MultiEventHelper$3;

    invoke-direct {v6, p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$3;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;Landroid/database/Cursor;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 169
    :cond_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v7, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getUnavailableMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v6, Lcom/eventgenie/android/utils/help/MultiEventHelper$5;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper$5;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 179
    .end local v3    # "isUsingHoldingPage":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->loadEvent(Landroid/database/Cursor;)V

    goto/16 :goto_2
.end method
