.class public final Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "VisitorGroupRepository$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/repository/VisitorGroupRepository;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/repository/VisitorGroupRepository;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/repository/VisitorGroupRepository;",
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

.field private dao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/VisitorGroup;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/repository/base/BaseRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "com.genie_connect.android.repository.VisitorGroupRepository"

    const-string v1, "members/com.genie_connect.android.repository.VisitorGroupRepository"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 40
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.VisitorGroup, java.lang.String>"

    const-class v1, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    .line 41
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    const-class v1, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    .line 42
    const-string v1, "members/com.genie_connect.android.repository.base.BaseRepository"

    const-class v2, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 43
    return-void
.end method

.method public get()Lcom/genie_connect/android/repository/VisitorGroupRepository;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    iget-object v1, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/Dao;

    iget-object v2, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/repository/VisitorGroupRepository;-><init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;)V

    .line 63
    .local v0, "result":Lcom/genie_connect/android/repository/VisitorGroupRepository;
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/repository/VisitorGroupRepository;)V

    .line 64
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->get()Lcom/genie_connect/android/repository/VisitorGroupRepository;

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
    .line 51
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/repository/VisitorGroupRepository;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/repository/VisitorGroupRepository;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/VisitorGroupRepository$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/repository/VisitorGroupRepository;)V

    return-void
.end method
