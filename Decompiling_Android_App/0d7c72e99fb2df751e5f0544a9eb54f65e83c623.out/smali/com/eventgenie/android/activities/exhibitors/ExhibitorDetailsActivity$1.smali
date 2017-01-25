.class Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;
.super Ljava/lang/Object;
.source "ExhibitorDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->populateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 254
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    const-class v2, Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo"

    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->mImageUrls:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->access$000(Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 256
    const-string v1, "photo_number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v1, "photoset_desc_1"

    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "photoset_desc_2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "extra_hide_view_original"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorDetailsActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
