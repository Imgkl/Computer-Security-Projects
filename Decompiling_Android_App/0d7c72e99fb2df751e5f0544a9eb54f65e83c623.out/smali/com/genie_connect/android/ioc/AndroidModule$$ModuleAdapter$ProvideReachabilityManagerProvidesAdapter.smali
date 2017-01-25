.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;
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
    name = "ProvideReachabilityManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/genie_connect/android/net/ReachabilityManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/net/ReachabilityManager;",
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

    .line 359
    const-string v0, "com.genie_connect.android.net.ReachabilityManager"

    const-string v1, "com.genie_connect.android.ioc.AndroidModule"

    const-string v2, "provideReachabilityManager"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    .line 361
    invoke-virtual {p0, v3}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;->setLibrary(Z)V

    .line 362
    return-void
.end method


# virtual methods
.method public get()Lcom/genie_connect/android/net/ReachabilityManager;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {v0}, Lcom/genie_connect/android/ioc/AndroidModule;->provideReachabilityManager()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;->get()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    return-object v0
.end method
