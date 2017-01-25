.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$2;
.super Ljava/lang/Object;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 459
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->addComment()V
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$700(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
