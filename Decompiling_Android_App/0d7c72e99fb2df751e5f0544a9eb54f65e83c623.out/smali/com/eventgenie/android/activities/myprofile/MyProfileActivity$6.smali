.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;
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
    .line 729
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->clearMugshot()Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$500(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Z

    .line 734
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    sget v1, Lcom/eventgenie/android/R$string;->message_image_discarded:I

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 737
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$6;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 738
    return-void
.end method
