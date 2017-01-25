.class Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;
.super Ljava/lang/Object;
.source "FullScreenCarousel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/products/FullScreenCarousel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 187
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "b":Landroid/os/Bundle;
    sget v3, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 193
    .local v2, "pos":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    # setter for: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mSelectedItem:Ljava/lang/Integer;
    invoke-static {v3, v2}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$1002(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 194
    if-eqz v2, :cond_1

    .line 195
    iget-object v3, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    sget v4, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 199
    iget-object v3, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$4;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    # getter for: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->galleryItemSelectedHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$1100(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Landroid/os/Handler;

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
    .line 205
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
