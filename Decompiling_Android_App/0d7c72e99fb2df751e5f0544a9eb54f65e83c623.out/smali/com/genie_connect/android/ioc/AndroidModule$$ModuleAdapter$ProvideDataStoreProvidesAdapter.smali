.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "AndroidModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideDataStoreProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/genie_connect/android/db/datastore/Datastore;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/db/datastore/Datastore;",
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

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/genie_connect/android/ioc/AndroidModule;

.field private preferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/ioc/AndroidModule;)V
    .locals 4
    .param p1, "module"    # Lcom/genie_connect/android/ioc/AndroidModule;

    .prologue
    .line 392
    const-string v0, "com.genie_connect.android.db.datastore.Datastore"

    const/4 v1, 0x1

    const-string v2, "com.genie_connect.android.ioc.AndroidModule"

    const-string v3, "provideDataStore"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 393
    iput-object p1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->setLibrary(Z)V

    .line 395
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 404
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    const-class v1, Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->appContext:Ldagger/internal/Binding;

    .line 405
    const-string v0, "@javax.inject.Named(value=defaultPrefs)/android.content.SharedPreferences"

    const-class v1, Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->preferences:Ldagger/internal/Binding;

    .line 406
    const-string v0, "de.greenrobot.event.EventBus"

    const-class v1, Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->eventBus:Ldagger/internal/Binding;

    .line 407
    return-void
.end method

.method public get()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 4

    .prologue
    .line 426
    iget-object v3, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->appContext:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->preferences:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    invoke-virtual {v3, v0, v1, v2}, Lcom/genie_connect/android/ioc/AndroidModule;->provideDataStore(Landroid/content/Context;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->get()Lcom/genie_connect/android/db/datastore/Datastore;

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
    .line 415
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->appContext:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->preferences:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method
