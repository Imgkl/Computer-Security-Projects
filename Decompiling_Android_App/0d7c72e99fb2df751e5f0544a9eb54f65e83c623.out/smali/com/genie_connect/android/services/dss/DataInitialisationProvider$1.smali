.class Lcom/genie_connect/android/services/dss/DataInitialisationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "DataInitialisationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/dss/DataInitialisationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/services/dss/DataInitialisationProvider;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/services/dss/DataInitialisationProvider;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider$1;->this$0:Lcom/genie_connect/android/services/dss/DataInitialisationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider$1;->this$0:Lcom/genie_connect/android/services/dss/DataInitialisationProvider;

    iget-object v0, v0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mOperation:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->setCancelled()V

    .line 57
    return-void
.end method
