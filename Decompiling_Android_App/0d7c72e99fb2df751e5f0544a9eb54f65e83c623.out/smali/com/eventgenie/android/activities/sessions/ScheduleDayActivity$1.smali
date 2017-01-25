.class Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;
.super Ljava/lang/Object;
.source "ScheduleDayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->scrollToNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;

.field final synthetic val$scrollToPos:I


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;I)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;

    iput p2, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;->val$scrollToPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 215
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;

    # getter for: Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->mScheduleView:Landroid/view/View;
    invoke-static {v4}, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;->access$000(Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity;)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 218
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 219
    .local v1, "firstVisiblePosition":I
    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 221
    .local v2, "lastVisiblePosition":I
    sub-int v4, v2, v1

    div-int/lit8 v0, v4, 0x2

    .line 223
    .local v0, "delta":I
    iget v4, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;->val$scrollToPos:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ SESSIONS-DAY: Next "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;->val$scrollToPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , Smooth Scrolling to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/eventgenie/android/activities/sessions/ScheduleDayActivity$1;->val$scrollToPos:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 226
    return-void
.end method
