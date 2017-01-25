.class public final Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ProoferSelectDataversionActivity$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;",
        ">;"
    }
.end annotation


# instance fields
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

.field private mUpdatesManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/services/UpdatesManager;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/eventgenie/android/activities/base/GenieBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    const-string v0, "com.eventgenie.android.activities.others.ProoferSelectDataversionActivity"

    const-string v1, "members/com.eventgenie.android.activities.others.ProoferSelectDataversionActivity"

    const/4 v2, 0x0

    const-class v3, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 41
    const-string v0, "com.genie_connect.android.db.datastore.Datastore"

    const-class v1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mDatastore:Ldagger/internal/Binding;

    .line 42
    const-string v0, "@javax.inject.Named(value=defaultPrefs)/android.content.SharedPreferences"

    const-class v1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mPrefs:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.genie_connect.android.services.UpdatesManager"

    const-class v1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mUpdatesManager:Ldagger/internal/Binding;

    .line 44
    const-string v1, "members/com.eventgenie.android.activities.base.GenieBaseActivity"

    const-class v2, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public get()Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;-><init>()V

    .line 66
    .local v0, "result":Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->injectMembers(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V

    .line 67
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->get()Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

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
    .line 53
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mDatastore:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mPrefs:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mUpdatesManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public injectMembers(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V
    .locals 1
    .param p1, "object"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mDatastore:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/datastore/Datastore;

    iput-object v0, p1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mPrefs:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->mUpdatesManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/services/UpdatesManager;

    iput-object v0, p1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$$InjectAdapter;->injectMembers(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V

    return-void
.end method
