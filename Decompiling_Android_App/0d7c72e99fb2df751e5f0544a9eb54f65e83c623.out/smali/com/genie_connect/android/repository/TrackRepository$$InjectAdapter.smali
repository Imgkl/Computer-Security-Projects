.class public final Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TrackRepository$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/repository/TrackRepository;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/repository/TrackRepository;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/repository/TrackRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private acl:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            ">;"
        }
    .end annotation
.end field

.field private agendaItemDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/AgendaItem;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

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
            "Lcom/genie_connect/common/db/model/Track;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private noteRepo:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ">;"
        }
    .end annotation
.end field

.field private sessionDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Session;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private subsessionDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Subsession;",
            "Ljava/lang/Long;",
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
    .line 35
    const-string v0, "com.genie_connect.android.repository.TrackRepository"

    const-string v1, "members/com.genie_connect.android.repository.TrackRepository"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 45
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Track, java.lang.Long>"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    .line 46
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.AgendaItem, java.lang.Long>"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->agendaItemDao:Ldagger/internal/Binding;

    .line 47
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Session, java.lang.Long>"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->sessionDao:Ldagger/internal/Binding;

    .line 48
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Subsession, java.lang.Long>"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->subsessionDao:Ldagger/internal/Binding;

    .line 49
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.genie_connect.android.db.datastore.acl.Acl"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->acl:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.genie_connect.android.repository.NoteRepository"

    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->noteRepo:Ldagger/internal/Binding;

    .line 52
    const-string v1, "members/com.genie_connect.android.repository.base.BaseRepository"

    const-class v2, Lcom/genie_connect/android/repository/TrackRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 53
    return-void
.end method

.method public get()Lcom/genie_connect/android/repository/TrackRepository;
    .locals 8

    .prologue
    .line 77
    new-instance v0, Lcom/genie_connect/android/repository/TrackRepository;

    iget-object v1, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/dao/Dao;

    iget-object v2, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->agendaItemDao:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/dao/Dao;

    iget-object v3, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->sessionDao:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/dao/Dao;

    iget-object v4, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->subsessionDao:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/greenrobot/dao/Dao;

    iget-object v5, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v6, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->acl:Ldagger/internal/Binding;

    invoke-virtual {v6}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v7, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->noteRepo:Ldagger/internal/Binding;

    invoke-virtual {v7}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/repository/NoteRepository;

    invoke-direct/range {v0 .. v7}, Lcom/genie_connect/android/repository/TrackRepository;-><init>(Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 78
    .local v0, "result":Lcom/genie_connect/android/repository/TrackRepository;
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/repository/TrackRepository;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->get()Lcom/genie_connect/android/repository/TrackRepository;

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
    .line 61
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->dao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->agendaItemDao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->sessionDao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->subsessionDao:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->appContext:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->acl:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->noteRepo:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/repository/TrackRepository;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/repository/TrackRepository;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/android/repository/TrackRepository;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/TrackRepository$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/repository/TrackRepository;)V

    return-void
.end method
