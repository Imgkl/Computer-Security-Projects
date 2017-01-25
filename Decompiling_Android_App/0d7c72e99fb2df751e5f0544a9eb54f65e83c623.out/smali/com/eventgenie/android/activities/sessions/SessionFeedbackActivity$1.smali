.class Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;
.super Ljava/lang/Object;
.source "SessionFeedbackActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    invoke-virtual {v2, p2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 119
    .local v0, "rb":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "tag":I
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->access$000(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->access$000(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 122
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->flipper:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->access$000(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 123
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    # invokes: Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->updateUI()V
    invoke-static {v2}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;->access$100(Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;)V

    .line 124
    return-void
.end method
