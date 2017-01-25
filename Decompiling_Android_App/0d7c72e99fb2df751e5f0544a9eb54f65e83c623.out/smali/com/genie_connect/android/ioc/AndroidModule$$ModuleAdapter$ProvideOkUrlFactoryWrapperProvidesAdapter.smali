.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;
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
    name = "ProvideOkUrlFactoryWrapperProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/genie_connect/common/net/OkUrlFactoryWrapper;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/common/net/OkUrlFactoryWrapper;",
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

    .line 631
    const-string v0, "com.genie_connect.common.net.OkUrlFactoryWrapper"

    const-string v1, "com.genie_connect.android.ioc.AndroidModule"

    const-string v2, "provideOkUrlFactoryWrapper"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 632
    iput-object p1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    .line 633
    invoke-virtual {p0, v3}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;->setLibrary(Z)V

    .line 634
    return-void
.end method


# virtual methods
.method public get()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {v0}, Lcom/genie_connect/android/ioc/AndroidModule;->provideOkUrlFactoryWrapper()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;->get()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v0

    return-object v0
.end method
