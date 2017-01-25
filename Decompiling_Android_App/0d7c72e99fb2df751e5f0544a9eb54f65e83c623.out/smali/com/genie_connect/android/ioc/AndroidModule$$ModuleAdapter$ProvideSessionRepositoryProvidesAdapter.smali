.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;
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
    name = "ProvideSessionRepositoryProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/genie_connect/android/repository/FavouriteSessionRepository;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/repository/FavouriteSessionRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/genie_connect/android/ioc/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/ioc/AndroidModule;)V
    .locals 4
    .param p1, "module"    # Lcom/genie_connect/android/ioc/AndroidModule;

    .prologue
    const/4 v3, 0x0

    .line 1935
    const-string v0, "@javax.inject.Named(value=sessionRepository)/com.genie_connect.android.repository.FavouriteSessionRepository"

    const-string v1, "com.genie_connect.android.ioc.AndroidModule"

    const-string v2, "provideSessionRepository"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1936
    iput-object p1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    .line 1937
    invoke-virtual {p0, v3}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;->setLibrary(Z)V

    .line 1938
    return-void
.end method


# virtual methods
.method public get()Lcom/genie_connect/android/repository/FavouriteSessionRepository;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {v0}, Lcom/genie_connect/android/ioc/AndroidModule;->provideSessionRepository()Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;->get()Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    move-result-object v0

    return-object v0
.end method
