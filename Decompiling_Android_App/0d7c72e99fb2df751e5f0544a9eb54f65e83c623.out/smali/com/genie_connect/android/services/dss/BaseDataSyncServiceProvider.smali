.class abstract Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;
.super Ljava/lang/Object;
.source "BaseDataSyncServiceProvider.java"

# interfaces
.implements Lcom/genie_connect/common/services/dss/DataSyncServiceFields;


# instance fields
.field public mConfig:Lcom/genie_connect/android/db/config/AppConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "appContext"
    .end annotation
.end field

.field public mEventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mNetworkPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method protected getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->mNetworkPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendSyncUpdateBroadcast(IIILjava/lang/String;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 74
    return-void
.end method
