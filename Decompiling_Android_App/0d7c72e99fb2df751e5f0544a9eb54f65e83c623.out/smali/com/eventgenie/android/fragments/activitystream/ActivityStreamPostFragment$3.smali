.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;
.super Ljava/lang/Object;
.source "ActivityStreamPostFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->onTakePictureClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    .line 425
    .local v0, "activity":Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->setCheckPermissionsAgain(Z)V

    .line 426
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3$1;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->setPermissionCallBack(Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;)V

    .line 433
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->checkPermissionAndDoAction()V

    .line 436
    .end local v0    # "activity":Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;
    :cond_0
    return-void
.end method
