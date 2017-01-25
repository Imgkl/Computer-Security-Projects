.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;
.super Ljava/lang/Object;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->deleteRequested(Lcom/eventgenie/android/container/EntityWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

.field final synthetic val$item:Lcom/eventgenie/android/container/EntityWrapper;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    iput-object p2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;->val$item:Lcom/eventgenie/android/container/EntityWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;->val$item:Lcom/eventgenie/android/container/EntityWrapper;

    check-cast v0, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;

    .line 788
    .local v0, "wrapper":Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/eventgenie/android/container/typed/ActivityStreamCommentWrapper;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 789
    return-void
.end method
