.class public final Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "DataInitialisationOperation$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/common/services/dss/DataInitialisationOperation;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/common/services/dss/DataInitialisationOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private db:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/platform/db/IDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private entityFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fileHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/io/FileHandler;",
            ">;"
        }
    .end annotation
.end field

.field private jsonManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/platform/json/IJsonManager;",
            ">;"
        }
    .end annotation
.end field

.field private networkPersister:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/net/providers/CommonNetworkPersister;",
            ">;"
        }
    .end annotation
.end field

.field private notifcationHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/platform/INotificationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private strategyManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "com.genie_connect.common.services.dss.DataInitialisationOperation"

    const-string v1, "members/com.genie_connect.common.services.dss.DataInitialisationOperation"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 40
    const-string v0, "com.genie_connect.common.platform.db.IDatabase"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->db:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.genie_connect.common.platform.INotificationHandler"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->notifcationHandler:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.genie_connect.common.platform.json.IJsonManager"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->jsonManager:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.genie_connect.common.net.providers.CommonNetworkPersister"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->networkPersister:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.genie_connect.common.services.dss.DataInitialisationStrategyManager"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->strategyManager:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.genie_connect.common.db.entityfactory.EGEntityFactory"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->entityFactory:Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.genie_connect.common.io.FileHandler"

    const-class v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->fileHandler:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public get()Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
    .locals 8

    .prologue
    .line 70
    new-instance v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    iget-object v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->db:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/platform/db/IDatabase;

    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->notifcationHandler:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/platform/INotificationHandler;

    iget-object v3, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->jsonManager:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/platform/json/IJsonManager;

    iget-object v4, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->networkPersister:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    iget-object v5, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->strategyManager:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    iget-object v6, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->entityFactory:Ldagger/internal/Binding;

    invoke-virtual {v6}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    iget-object v7, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->fileHandler:Ldagger/internal/Binding;

    invoke-virtual {v7}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/common/io/FileHandler;

    invoke-direct/range {v0 .. v7}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;-><init>(Lcom/genie_connect/common/platform/db/IDatabase;Lcom/genie_connect/common/platform/INotificationHandler;Lcom/genie_connect/common/platform/json/IJsonManager;Lcom/genie_connect/common/net/providers/CommonNetworkPersister;Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;Lcom/genie_connect/common/io/FileHandler;)V

    .line 71
    .local v0, "result":Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->get()Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

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
    .line 55
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->db:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->notifcationHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->jsonManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->networkPersister:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->strategyManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->entityFactory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$$InjectAdapter;->fileHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
