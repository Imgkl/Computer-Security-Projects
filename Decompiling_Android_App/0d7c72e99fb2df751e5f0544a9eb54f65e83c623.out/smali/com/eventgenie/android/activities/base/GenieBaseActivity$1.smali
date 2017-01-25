.class Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;
.super Ljava/lang/Object;
.source "GenieBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieBaseActivity;->requestPermission()V
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
    .line 381
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequiredAllPermissions()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getRequestPermissionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 385
    return-void
.end method
