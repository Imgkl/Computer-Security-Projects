.class Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;
.super Ljava/lang/Object;
.source "GenieAbcActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieAbcActivity;->requestPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieAbcActivity;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequiredAllPermissions()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getRequestPermissionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 659
    return-void
.end method
