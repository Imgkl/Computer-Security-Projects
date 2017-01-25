.class public final Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "FavouriteManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/bl/favourites/FavouriteManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/bl/favourites/FavouriteManager;",
        ">;"
    }
.end annotation


# instance fields
.field private agendaItemRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/repository/AgendaItemRepository;",
            ">;"
        }
    .end annotation
.end field

.field private config:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/db/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private sessionRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/repository/SessionRepository;",
            ">;"
        }
    .end annotation
.end field

.field private subsessionRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/repository/SubsessionRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    const-string v0, "com.genie_connect.android.bl.favourites.FavouriteManager"

    const-string v1, "members/com.genie_connect.android.bl.favourites.FavouriteManager"

    const/4 v2, 0x0

    const-class v3, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

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
    const-string v0, "com.genie_connect.android.repository.SessionRepository"

    const-class v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->sessionRepository:Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.genie_connect.android.repository.SubsessionRepository"

    const-class v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->subsessionRepository:Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.genie_connect.android.repository.AgendaItemRepository"

    const-class v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->agendaItemRepository:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.genie_connect.android.db.config.AppConfig"

    const-class v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->config:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public get()Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .locals 5

    .prologue
    .line 61
    new-instance v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    iget-object v1, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->sessionRepository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v2, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->subsessionRepository:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/SubsessionRepository;

    iget-object v3, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->agendaItemRepository:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/repository/AgendaItemRepository;

    iget-object v4, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->config:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/config/AppConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;-><init>(Lcom/genie_connect/android/repository/SessionRepository;Lcom/genie_connect/android/repository/SubsessionRepository;Lcom/genie_connect/android/repository/AgendaItemRepository;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 62
    .local v0, "result":Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->get()Lcom/genie_connect/android/bl/favourites/FavouriteManager;

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
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->sessionRepository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->subsessionRepository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->agendaItemRepository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$$InjectAdapter;->config:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
