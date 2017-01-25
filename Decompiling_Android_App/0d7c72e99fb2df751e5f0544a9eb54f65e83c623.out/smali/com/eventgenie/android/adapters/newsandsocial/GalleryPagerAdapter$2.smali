.class Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;
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

.field final synthetic val$offset1:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;II)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    iput p2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->val$position:I

    iput p3, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->val$offset1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->access$000(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->entities:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->access$200(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->val$position:I

    iget v3, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->val$offset1:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/container/CursorEntityWrapper;

    iget-object v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter$2;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;->access$000(Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/container/CursorEntityWrapper;->generateDetailsIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
