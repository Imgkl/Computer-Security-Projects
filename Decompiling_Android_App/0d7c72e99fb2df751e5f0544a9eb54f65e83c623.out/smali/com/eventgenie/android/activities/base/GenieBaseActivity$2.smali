.class Lcom/eventgenie/android/activities/base/GenieBaseActivity$2;
.super Ljava/lang/Object;
.source "GenieBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieBaseActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$2;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$2;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doActionAfterRejectingPermissions()V

    .line 437
    return-void
.end method
