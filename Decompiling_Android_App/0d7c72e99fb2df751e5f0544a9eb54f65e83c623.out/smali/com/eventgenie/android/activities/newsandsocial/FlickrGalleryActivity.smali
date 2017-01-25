.class public Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "FlickrGalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;
    }
.end annotation


# static fields
.field public static final PHOTOSET_ID_EXTRA:Ljava/lang/String; = "photoset_id"

.field private static final PHOTO_COUNT:I = 0x64


# instance fields
.field private adapter:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

.field private data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

.field private mGrid:Landroid/widget/GridView;

.field private photosetId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->photosetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->populateGrid(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    return-void
.end method

.method private getPhotos()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "resoredData":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 97
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)V

    new-array v2, v4, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    .end local v0    # "resoredData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 99
    .restart local v0    # "resoredData":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .end local v0    # "resoredData":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->populateGrid(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    goto :goto_0
.end method

.method private populateGrid(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 3
    .param p1, "photos"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .line 105
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    sget-object v2, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;->PICTURES_GRIDVIEW_THUMBS:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;

    invoke-direct {v0, v1, p0, v2}, Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;-><init>(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Landroid/content/Context;Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter$AdapterType;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->adapter:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->adapter:Lcom/eventgenie/android/adapters/newsandsocial/FlickrAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v1, Lcom/eventgenie/android/R$layout;->activity_photo_gallery:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->setContentView(I)V

    .line 70
    sget v1, Lcom/eventgenie/android/R$id;->grid_gallery:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->mGrid:Landroid/widget/GridView;

    .line 71
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "photoset_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->photosetId:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getFlickr()Lcom/genie_connect/android/db/config/widgets/FlickrConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/FlickrConfig;->getUser()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->userId:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    const-string/jumbo v2, "window_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 84
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getPhotos()V

    .line 85
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo_number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "photoset_id"

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->photosetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->data:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    return-object v0
.end method
