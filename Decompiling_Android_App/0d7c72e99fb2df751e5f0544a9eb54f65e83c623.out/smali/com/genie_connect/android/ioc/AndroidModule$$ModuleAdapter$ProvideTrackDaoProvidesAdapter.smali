.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;
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
    name = "ProvideTrackDaoProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lde/greenrobot/dao/Dao",
        "<",
        "Lcom/genie_connect/common/db/model/Track;",
        "Ljava/lang/Long;",
        ">;>;",
        "Ljavax/inject/Provider",
        "<",
        "Lde/greenrobot/dao/Dao",
        "<",
        "Lcom/genie_connect/common/db/model/Track;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/genie_connect/android/ioc/AndroidModule;

.field private provider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/ioc/AndroidModule;)V
    .locals 4
    .param p1, "module"    # Lcom/genie_connect/android/ioc/AndroidModule;

    .prologue
    const/4 v3, 0x0

    .line 1662
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Track, java.lang.Long>"

    const-string v1, "com.genie_connect.android.ioc.AndroidModule"

    const-string v2, "provideTrackDao"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1663
    iput-object p1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    .line 1664
    invoke-virtual {p0, v3}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->setLibrary(Z)V

    .line 1665
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 1674
    const-string v0, "com.genie_connect.android.db.access.DaoProvider"

    const-class v1, Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->provider:Ldagger/internal/Binding;

    .line 1675
    return-void
.end method

.method public get()Lde/greenrobot/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Track;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->provider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/DaoProvider;

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/ioc/AndroidModule;->provideTrackDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->get()Lde/greenrobot/dao/Dao;

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
    .line 1683
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;->provider:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1684
    return-void
.end method
