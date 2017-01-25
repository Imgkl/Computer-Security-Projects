.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->showUploadDialogue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyMugshotUpload(Landroid/content/Context;)Z

    .line 724
    new-instance v0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;-><init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$400(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 725
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$5;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 726
    return-void
.end method
