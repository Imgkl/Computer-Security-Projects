.class public final Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseDataIntentService$$InjectAdapter.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/services/BaseDataIntentService;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/services/BaseDataIntentService;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfig:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mDatastore:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/db/datastore/Datastore;",
            ">;"
        }
    .end annotation
.end field

.field private mEventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private mPersister:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/net/providers/NetworkPersister;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    const-string v1, "members/com.genie_connect.android.services.BaseDataIntentService"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/android/services/BaseDataIntentService;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 37
    const-string v0, "com.genie_connect.android.net.providers.NetworkPersister"

    const-class v1, Lcom/genie_connect/android/services/BaseDataIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mPersister:Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.genie_connect.android.db.config.AppConfig"

    const-class v1, Lcom/genie_connect/android/services/BaseDataIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mConfig:Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.genie_connect.android.db.datastore.Datastore"

    const-class v1, Lcom/genie_connect/android/services/BaseDataIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mDatastore:Ldagger/internal/Binding;

    .line 40
    const-string v0, "de.greenrobot.event.EventBus"

    const-class v1, Lcom/genie_connect/android/services/BaseDataIntentService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mEventBus:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mPersister:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mConfig:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mDatastore:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mEventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/services/BaseDataIntentService;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/services/BaseDataIntentService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mPersister:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/providers/NetworkPersister;

    iput-object v0, p1, Lcom/genie_connect/android/services/BaseDataIntentService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mConfig:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/AppConfig;

    iput-object v0, p1, Lcom/genie_connect/android/services/BaseDataIntentService;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 63
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mDatastore:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/Datastore;

    iput-object v0, p1, Lcom/genie_connect/android/services/BaseDataIntentService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->mEventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/genie_connect/android/services/BaseDataIntentService;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 65
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/genie_connect/android/services/BaseDataIntentService;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/BaseDataIntentService$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/services/BaseDataIntentService;)V

    return-void
.end method
