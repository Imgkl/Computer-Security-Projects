.class Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;
.super Ljava/lang/Object;
.source "FlickrPhotoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

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
    .line 238
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 240
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v3, Lcom/eventgenie/android/R$string;->tag_image_caption:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/eventgenie/android/R$string;->tag_image_caption:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v3, Lcom/eventgenie/android/R$string;->tag_image_date:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/eventgenie/android/R$string;->tag_image_date:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v3, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_desktop:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_desktop:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v3, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_mobile:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_mobile:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v3, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 248
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$4;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->galleryItemSelectedHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$900(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
    .line 254
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
