.class Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$4;
.super Ljava/lang/Object;
.source "FullScreenCarouselActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$4;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 196
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "b":Landroid/os/Bundle;
    sget v3, Lcom/eventgenie/android/R$id;->positionId:I

    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 199
    .local v2, "pos":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$4;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # setter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mSelectedItem:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$1002(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 201
    if-eqz v2, :cond_1

    .line 202
    sget v3, Lcom/eventgenie/android/R$id;->positionId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 206
    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$4;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->galleryItemSelectedHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$1100(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
