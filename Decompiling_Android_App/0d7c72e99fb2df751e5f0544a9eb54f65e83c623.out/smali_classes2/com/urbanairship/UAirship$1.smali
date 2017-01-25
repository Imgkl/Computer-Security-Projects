.class final Lcom/urbanairship/UAirship$1;
.super Lcom/urbanairship/CancelableOperation;
.source "UAirship.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/urbanairship/UAirship$OnReadyCallback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 177
    iput-object p2, p0, Lcom/urbanairship/UAirship$1;->val$callback:Lcom/urbanairship/UAirship$OnReadyCallback;

    invoke-direct {p0, p1}, Lcom/urbanairship/CancelableOperation;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 181
    .local v0, "airship":Lcom/urbanairship/UAirship;
    iget-object v1, p0, Lcom/urbanairship/UAirship$1;->val$callback:Lcom/urbanairship/UAirship$OnReadyCallback;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/urbanairship/UAirship$1;->val$callback:Lcom/urbanairship/UAirship$OnReadyCallback;

    invoke-interface {v1, v0}, Lcom/urbanairship/UAirship$OnReadyCallback;->onAirshipReady(Lcom/urbanairship/UAirship;)V

    .line 184
    :cond_0
    return-void
.end method
