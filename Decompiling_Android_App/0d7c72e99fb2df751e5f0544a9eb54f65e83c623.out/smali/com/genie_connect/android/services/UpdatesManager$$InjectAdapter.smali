.class public final Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UpdatesManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/services/UpdatesManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/services/UpdatesManager;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/services/UpdatesManager;",
        ">;"
    }
.end annotation


# instance fields
.field private appContext:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

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

.field private mDataStore:Ldagger/internal/Binding;
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

.field private mPrefs:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private mUserNotificationManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/eventgenie/android/utils/managers/UserNotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "com.genie_connect.android.services.UpdatesManager"

    const-string v1, "members/com.genie_connect.android.services.UpdatesManager"

    const/4 v2, 0x1

    const-class v3, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 43
    const-string v0, "com.genie_connect.android.db.config.AppConfig"

    const-class v1, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mConfig:Ldagger/internal/Binding;

    .line 44
    const-string v0, "de.greenrobot.event.EventBus"

    const-class v1, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mEventBus:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.genie_connect.android.db.datastore.Datastore"

    const-class v1, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mDataStore:Ldagger/internal/Binding;

    .line 46
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    const-class v1, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    .line 47
    const-string v0, "@javax.inject.Named(value=defaultPrefs)/android.content.SharedPreferences"

    const-class v1, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mPrefs:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.eventgenie.android.utils.managers.UserNotificationManager"

    const-class v1, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mUserNotificationManager:Ldagger/internal/Binding;

    .line 49
    return-void
.end method

.method public get()Lcom/genie_connect/android/services/UpdatesManager;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/genie_connect/android/services/UpdatesManager;

    invoke-direct {v0}, Lcom/genie_connect/android/services/UpdatesManager;-><init>()V

    .line 72
    .local v0, "result":Lcom/genie_connect/android/services/UpdatesManager;
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/services/UpdatesManager;)V

    .line 73
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->get()Lcom/genie_connect/android/services/UpdatesManager;

    move-result-object v0

    return-object v0
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
    .line 57
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mConfig:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mEventBus:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mDataStore:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mPrefs:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mUserNotificationManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/services/UpdatesManager;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/services/UpdatesManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mConfig:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/AppConfig;

    iput-object v0, p1, Lcom/genie_connect/android/services/UpdatesManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 83
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mEventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/genie_connect/android/services/UpdatesManager;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 84
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mDataStore:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/Datastore;

    iput-object v0, p1, Lcom/genie_connect/android/services/UpdatesManager;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p1, Lcom/genie_connect/android/services/UpdatesManager;->appContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mPrefs:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 87
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->mUserNotificationManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    iput-object v0, p1, Lcom/genie_connect/android/services/UpdatesManager;->mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    .line 88
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/android/services/UpdatesManager;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/UpdatesManager$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/services/UpdatesManager;)V

    return-void
.end method
