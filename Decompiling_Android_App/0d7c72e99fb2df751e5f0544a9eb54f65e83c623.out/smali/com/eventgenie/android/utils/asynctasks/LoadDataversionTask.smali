.class public Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;
.super Landroid/os/AsyncTask;
.source "LoadDataversionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$1;,
        Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATUS_ERROR_DATAVERSION_DOES_NOT_EXIST:I = 0x2

.field private static final STATUS_ERROR_EVENT_NOT_FOUND:I = 0x1

.field private static final STATUS_ERROR_UNABLE_TO_DOWNLOAD_CONFIG:I = 0x3

.field private static final STATUS_OK:I


# instance fields
.field private final mAction:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

.field private final mActivity:Landroid/app/Activity;

.field private final mNamespace:J

.field public final mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

.field private final mRequestedDataversion:Ljava/lang/String;

.field private mStatus:I

.field private mVersionToLoad:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "namespace"    # J
    .param p4, "action"    # Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;
    .param p5, "dataversion"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    .line 78
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    .line 79
    iput-wide p2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNamespace:J

    .line 80
    iput-object p5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mRequestedDataversion:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mAction:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    .line 82
    invoke-static {p1}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v0

    .line 84
    .local v0, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    const-string v3, "LoadDataversionTask()"

    invoke-virtual {v0, v3}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserAuthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    .line 87
    return-void
.end method

.method private static getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method private getFullEvent(J)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .locals 5
    .param p1, "namespace"    # J

    .prologue
    .line 147
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2, v3, p1, p2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    .line 149
    .local v1, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 152
    .local v0, "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->populateProoferEvent(Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v2

    .line 157
    .end local v0    # "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private toggleIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    .line 91
    iget-wide v6, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNamespace:J

    invoke-direct {p0, v6, v7}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->getFullEvent(J)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v0

    .line 95
    .local v0, "event":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    if-eqz v0, :cond_1

    .line 96
    sget-object v5, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$1;->$SwitchMap$com$eventgenie$android$utils$asynctasks$LoadDataversionTask$Action:[I

    iget-object v6, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mAction:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 120
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mAction:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ PROOFER: LoadLatestDataversionTask - Dataversion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLiveVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLiveVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    .line 100
    const/4 v2, 0x1

    .line 127
    .local v2, "gotEventInfo":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 128
    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v6

    iget-wide v8, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNamespace:J

    iget-object v7, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    invoke-static {v5, v6, v8, v9, v7}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, "gotConfig":Z
    if-eqz v1, :cond_2

    .line 134
    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/eventgenie/android/utils/help/ProoferUtils;->resetEventSpecificAppSettings(Landroid/content/Context;)V

    .line 135
    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/genie_connect/android/db/access/Udm;->clearLocalUserStore(Landroid/content/Context;)V

    .line 143
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 103
    .end local v1    # "gotConfig":Z
    .end local v2    # "gotEventInfo":Z
    :pswitch_1
    const-string v5, "^ PROOFER: LoadLatestDataversionTask - Dataversion: LIVE"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 104
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    .line 105
    const/4 v2, 0x1

    .line 106
    .restart local v2    # "gotEventInfo":Z
    goto :goto_0

    .line 108
    .end local v2    # "gotEventInfo":Z
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ PROOFER: LoadLatestDataversionTask - Checking if Dataversion exists: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mRequestedDataversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNetworkDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v7, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mRequestedDataversion:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->doHeadRequestForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v3

    .line 111
    .local v3, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mRequestedDataversion:Ljava/lang/String;

    iput-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    .line 113
    const/4 v2, 0x1

    .restart local v2    # "gotEventInfo":Z
    goto :goto_0

    .line 115
    .end local v2    # "gotEventInfo":Z
    :cond_0
    const/4 v5, 0x2

    iput v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    .line 116
    const/4 v2, 0x0

    .line 118
    .restart local v2    # "gotEventInfo":Z
    goto :goto_0

    .line 123
    .end local v2    # "gotEventInfo":Z
    .end local v3    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_1
    iput v4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    .line 124
    const/4 v2, 0x0

    .restart local v2    # "gotEventInfo":Z
    goto :goto_0

    .line 137
    .restart local v1    # "gotConfig":Z
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    goto :goto_1

    .line 140
    .end local v1    # "gotConfig":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "gotConfig":Z
    goto :goto_1

    .line 143
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ PROOFER: LoadLatestDataversionTask - result onPostExecute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ PROOFER: LoadLatestDataversionTask - Dataversion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Namespace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNamespace:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v3}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->toggleIndicator(Z)V

    .line 167
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    if-nez v4, :cond_2

    .line 168
    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    .line 170
    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v0

    .line 171
    .local v0, "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mAction:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    sget-object v5, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_LIVE:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    if-ne v4, v5, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setProoferLiveModeEnabled(Z)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 172
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 175
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading Dataversion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 182
    :goto_1
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mVersionToLoad:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/eventgenie/android/utils/help/ProoferUtils;->initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 184
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 207
    .end local v0    # "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    :goto_2
    return-void

    .restart local v0    # "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    :cond_0
    move v2, v3

    .line 171
    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    const-string v4, "Loading Dataversion: LIVE"

    invoke-static {v2, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 188
    .end local v0    # "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    :cond_2
    iget v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mStatus:I

    packed-switch v2, :pswitch_data_0

    .line 199
    const-string v1, "Event re-init failed!"

    .line 202
    .local v1, "errorMessage":Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v2, v1, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_2

    .line 190
    .end local v1    # "errorMessage":Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find requested dataversion! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mRequestedDataversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .restart local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_3

    .line 193
    .end local v1    # "errorMessage":Ljava/lang/String;
    :pswitch_1
    const-string v1, "Unable to find the requested Event!"

    .line 194
    .restart local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_3

    .line 196
    .end local v1    # "errorMessage":Ljava/lang/String;
    :pswitch_2
    const-string v1, "Unable to download Config for Event!"

    .line 197
    .restart local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_3

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PROOFER: LoadLatestDataversionTask - About to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;->toggleIndicator(Z)V

    .line 213
    return-void
.end method
