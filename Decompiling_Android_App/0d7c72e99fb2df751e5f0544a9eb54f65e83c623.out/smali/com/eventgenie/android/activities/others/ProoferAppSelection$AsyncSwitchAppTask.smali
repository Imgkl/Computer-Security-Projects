.class Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;
.super Landroid/os/AsyncTask;
.source "ProoferAppSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ProoferAppSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncSwitchAppTask"
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


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

.field private final mLiveData:Ljava/lang/Boolean;

.field private final mSpecificVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "event"    # Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .param p4, "liveData"    # Ljava/lang/Boolean;
    .param p5, "specificVersion"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 683
    iput-object p2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mContext:Landroid/content/Context;

    .line 684
    iput-object p3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 685
    iput-object p4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mLiveData:Ljava/lang/Boolean;

    .line 686
    iput-object p5, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mSpecificVersion:Ljava/lang/String;

    .line 687
    return-void
.end method

.method private getFullEvent(Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .locals 8
    .param p1, "event"    # Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .prologue
    .line 696
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-static {v4}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v1

    .line 699
    .local v1, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    new-instance v2, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-string v5, "AsyncSwitchAppTask()"

    invoke-virtual {v1, v5}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserAuthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 719
    .local v2, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v3

    .line 722
    .local v3, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 725
    .local v0, "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 726
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->populateProoferEvent(Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v4

    .line 729
    .end local v0    # "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private prepareForAppSwitch(Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .param p3, "liveData"    # Ljava/lang/Boolean;
    .param p4, "specificVersion"    # Ljava/lang/String;

    .prologue
    .line 759
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 761
    .local v1, "res":Ljava/lang/Boolean;
    if-eqz p2, :cond_4

    .line 762
    invoke-direct {p0, p2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->getFullEvent(Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object p2

    .line 764
    if-eqz p2, :cond_3

    .line 765
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/ProoferUtils;->resetEventSpecificAppSettings(Landroid/content/Context;)V

    .line 767
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v4

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mNamespace:J
    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1302(Lcom/eventgenie/android/activities/others/ProoferAppSelection;J)J

    .line 769
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    const-string v3, "^ PROOFER: LoadAppTask - Using LIVE data."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 771
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLiveVersion()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    :goto_0
    invoke-static {p1}, Lcom/genie_connect/android/db/access/Udm;->clearLocalUserStore(Landroid/content/Context;)V

    .line 793
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->liveMode:Z
    invoke-static {v3, v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$902(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Z)Z

    .line 794
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/net/ReachabilityManager;->getSelectedServerSet()I

    move-result v2

    .line 795
    .local v2, "serverSet":I
    invoke-static {p1}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v0

    .line 796
    .local v0, "prefs":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    invoke-virtual {v0, v2}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setSelectedServerSet(I)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 797
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->liveMode:Z
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$900(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setProoferLiveModeEnabled(Z)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 798
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PROOFER: LoadAppTask - Getting config for namespace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mNamespace:J
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 807
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mNamespace:J
    invoke-static {v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static {v3, v4, v6, v7, v5}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 815
    .end local v0    # "prefs":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    .end local v2    # "serverSet":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PROOFER: LoadAppTask - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 816
    return-object v1

    .line 773
    :cond_0
    const-string v3, "^ PROOFER: LoadAppTask - Trying to use a STAGING version"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 775
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 776
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v3, p4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    :goto_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ PROOFER: LoadAppTask - Using a STAGING data version! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getStagingVersion()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 784
    :cond_2
    const-string v3, "^ PROOFER: LoadAppTask - Failed. Using LIVE data."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLiveVersion()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 809
    :cond_3
    const-string v3, "^ PROOFER: LoadAppTask - full event is NULL!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 812
    :cond_4
    const-string v3, "^ PROOFER: LoadAppTask - event is NULL!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 691
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mLiveData:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mSpecificVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->prepareForAppSwitch(Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 692
    .local v0, "result":Ljava/lang/Boolean;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 675
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    .line 734
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showIndicator(ZZ)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PROOFER: LoadAppTask - result onPostExecute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 737
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 738
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    .line 740
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->liveMode:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$900(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const/4 v1, 0x0

    # invokes: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1000(Landroid/content/Context;Ljava/lang/String;)V

    .line 746
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->finish()V

    .line 750
    :goto_1
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$1200(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-string v1, "Event switch failed!"

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 675
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PROOFER: LoadAppTask - About to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->mEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0, v2, v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showIndicator(ZZ)V

    .line 756
    return-void
.end method
