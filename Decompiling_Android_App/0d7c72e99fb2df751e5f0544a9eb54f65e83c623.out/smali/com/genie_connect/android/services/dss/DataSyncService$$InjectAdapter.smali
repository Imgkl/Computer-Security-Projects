.class public final Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DataSyncService$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/services/dss/DataSyncService;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/services/dss/DataSyncService;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/services/dss/DataSyncService;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeltaV2Provider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/services/dss/DeltaV2Provider;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/services/BaseDataIntentService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.genie_connect.android.services.dss.DataSyncService"

    const-string v1, "members/com.genie_connect.android.services.dss.DataSyncService"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 39
    const-string v0, "com.genie_connect.android.services.dss.DeltaV2Provider"

    const-class v1, Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->mDeltaV2Provider:Ldagger/internal/Binding;

    .line 40
    const-string v1, "members/com.genie_connect.android.services.BaseDataIntentService"

    const-class v2, Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lcom/genie_connect/android/services/dss/DataSyncService;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-direct {v0}, Lcom/genie_connect/android/services/dss/DataSyncService;-><init>()V

    .line 60
    .local v0, "result":Lcom/genie_connect/android/services/dss/DataSyncService;
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/services/dss/DataSyncService;)V

    .line 61
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->get()Lcom/genie_connect/android/services/dss/DataSyncService;

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
    .line 49
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->mDeltaV2Provider:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/services/dss/DataSyncService;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/services/dss/DataSyncService;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->mDeltaV2Provider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/services/dss/DeltaV2Provider;

    iput-object v0, p1, Lcom/genie_connect/android/services/dss/DataSyncService;->mDeltaV2Provider:Lcom/genie_connect/android/services/dss/DeltaV2Provider;

    .line 71
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/android/services/dss/DataSyncService;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/dss/DataSyncService$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/services/dss/DataSyncService;)V

    return-void
.end method
