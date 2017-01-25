.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;
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
    name = "ProvideEventBusProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lde/greenrobot/event/EventBus;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lde/greenrobot/event/EventBus;",
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
    .line 120
    const-string v0, "de.greenrobot.event.EventBus"

    const/4 v1, 0x1

    const-string v2, "com.genie_connect.android.ioc.AndroidModule"

    const-string v3, "provideEventBus"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;->setLibrary(Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public get()Lde/greenrobot/event/EventBus;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;->module:Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-virtual {v0}, Lcom/genie_connect/android/ioc/AndroidModule;->provideEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;->get()Lde/greenrobot/event/EventBus;

    move-result-object v0

    return-object v0
.end method
