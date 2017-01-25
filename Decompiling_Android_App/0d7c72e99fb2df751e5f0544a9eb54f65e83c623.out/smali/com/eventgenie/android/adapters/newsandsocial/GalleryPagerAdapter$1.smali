.class Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;
.super Ljava/lang/Object;
.source "GalleryPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    iput p2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->access$000(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string v1, "photo"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->images:[Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->access$100(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 104
    const-string v1, "extra_hide_view_original"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v1, "photo_number"

    iget v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "photoset_desc_1"

    iget-object v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->access$000(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
