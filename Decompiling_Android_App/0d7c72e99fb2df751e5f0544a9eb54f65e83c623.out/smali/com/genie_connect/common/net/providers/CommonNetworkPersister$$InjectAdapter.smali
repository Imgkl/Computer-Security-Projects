.class public final Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "CommonNetworkPersister$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/common/net/providers/CommonNetworkPersister;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/common/net/providers/CommonNetworkPersister;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/common/net/providers/CommonNetworkPersister;",
        ">;"
    }
.end annotation


# instance fields
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

.field private networkSettings:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/platform/INetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private notificationHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/platform/INotificationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/net/providers/CommonNetworkBase;",
            ">;"
        }
    .end annotation
.end field

.field private urlFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/common/net/OkUrlFactoryWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "com.genie_connect.common.net.providers.CommonNetworkPersister"

    const-string v1, "members/com.genie_connect.common.net.providers.CommonNetworkPersister"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 42
    const-string v0, "com.genie_connect.common.platform.INotificationHandler"

    const-class v1, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->notificationHandler:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.genie_connect.common.platform.INetworkSettings"

    const-class v1, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->networkSettings:Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.genie_connect.common.net.OkUrlFactoryWrapper"

    const-class v1, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->urlFactory:Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.genie_connect.common.io.FileHandler"

    const-class v1, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->fileHandler:Ldagger/internal/Binding;

    .line 46
    const-string v1, "members/com.genie_connect.common.net.providers.CommonNetworkBase"

    const-class v2, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 47
    return-void
.end method

.method public get()Lcom/genie_connect/common/net/providers/CommonNetworkPersister;
    .locals 5

    .prologue
    .line 68
    new-instance v0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    iget-object v1, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->notificationHandler:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/platform/INotificationHandler;

    iget-object v2, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->networkSettings:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/platform/INetworkSettings;

    iget-object v3, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->urlFactory:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    iget-object v4, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->fileHandler:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/io/FileHandler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;-><init>(Lcom/genie_connect/common/platform/INotificationHandler;Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;Lcom/genie_connect/common/io/FileHandler;)V

    .line 69
    .local v0, "result":Lcom/genie_connect/common/net/providers/CommonNetworkPersister;
    invoke-virtual {p0, v0}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->injectMembers(Lcom/genie_connect/common/net/providers/CommonNetworkPersister;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->get()Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

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
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->notificationHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->networkSettings:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->urlFactory:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->fileHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/common/net/providers/CommonNetworkPersister;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister$$InjectAdapter;->injectMembers(Lcom/genie_connect/common/net/providers/CommonNetworkPersister;)V

    return-void
.end method
