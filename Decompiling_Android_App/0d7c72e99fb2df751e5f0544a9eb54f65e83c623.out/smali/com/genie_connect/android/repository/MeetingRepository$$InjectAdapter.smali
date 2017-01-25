.class public final Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "MeetingRepository$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/repository/MeetingRepository;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/repository/MeetingRepository;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/repository/MeetingRepository;",
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
            "Lcom/genie_connect/common/db/model/Meeting;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private loginManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/security/VisitorLoginManager;",
            ">;"
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
    .line 31
    const-string v0, "com.genie_connect.android.repository.MeetingRepository"

    const-string v1, "members/com.genie_connect.android.repository.MeetingRepository"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/android/repository/MeetingRepository;

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
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Meeting, java.lang.Long>"

    const-class v1, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    .line 42
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    const-class v1, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.genie_connect.android.security.VisitorLoginManager"

    const-class v1, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->loginManager:Ldagger/internal/Binding;

    .line 44
    const-string v1, "members/com.genie_connect.android.repository.base.BaseRepository"

    const-class v2, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public get()Lcom/genie_connect/android/repository/MeetingRepository;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/genie_connect/android/repository/MeetingRepository;

    iget-object v1, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/Dao;

    iget-object v2, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->loginManager:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/repository/MeetingRepository;-><init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/security/VisitorLoginManager;)V

    .line 66
    .local v0, "result":Lcom/genie_connect/android/repository/MeetingRepository;
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/repository/MeetingRepository;)V

    .line 67
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->get()Lcom/genie_connect/android/repository/MeetingRepository;

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
    iget-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->loginManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/repository/MeetingRepository;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/repository/MeetingRepository;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/android/repository/MeetingRepository;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/MeetingRepository$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/repository/MeetingRepository;)V

    return-void
.end method
