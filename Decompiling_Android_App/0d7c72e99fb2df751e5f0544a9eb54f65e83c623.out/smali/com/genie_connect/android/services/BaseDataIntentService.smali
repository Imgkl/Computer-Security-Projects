.class public abstract Lcom/genie_connect/android/services/BaseDataIntentService;
.super Landroid/app/IntentService;
.source "BaseDataIntentService.java"


# instance fields
.field public mConfig:Lcom/genie_connect/android/db/config/AppConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mEventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
