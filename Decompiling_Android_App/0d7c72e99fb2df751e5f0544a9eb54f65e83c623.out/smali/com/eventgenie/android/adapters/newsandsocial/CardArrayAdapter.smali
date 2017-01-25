.class public Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CardArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private activityStreamPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation
.end field

.field final blackColor:I

.field final colors:[I

.field final facebookColor:I

.field final grayColor:I

.field private mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

.field private final mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final twitterColor:I

.field final whiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p5, "callback"    # Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;",
            "Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "activityStreamObjects":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p4, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->activityStreamPosts:Ljava/util/List;

    .line 60
    sget v1, Lcom/eventgenie/android/R$color;->White:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->whiteColor:I

    .line 61
    sget v1, Lcom/eventgenie/android/R$color;->Black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->blackColor:I

    .line 62
    sget v1, Lcom/eventgenie/android/R$color;->Blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->twitterColor:I

    .line 63
    sget v1, Lcom/eventgenie/android/R$color;->DarkBlue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->facebookColor:I

    .line 64
    sget v1, Lcom/eventgenie/android/R$color;->LightGrey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->grayColor:I

    .line 65
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->colors:[I

    .line 66
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->colors:[I

    const/4 v2, 0x0

    sget v3, Lcom/eventgenie/android/R$color;->LightSalmon:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 67
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->colors:[I

    const/4 v2, 0x1

    sget v3, Lcom/eventgenie/android/R$color;->LightBlue:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 68
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->colors:[I

    const/4 v2, 0x2

    sget v3, Lcom/eventgenie/android/R$color;->Olive:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 69
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->colors:[I

    const/4 v2, 0x3

    sget v3, Lcom/eventgenie/android/R$color;->LightCyan:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 70
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p5, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;)Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->activityStreamPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->activityStreamPosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    invoke-static {v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->getItemViewTypeFromObject(Lcom/genie_connect/common/db/model/ActivityStreamPost;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->activityStreamPosts:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .line 84
    .local v0, "activityStreamItem":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    .line 85
    :cond_0
    new-instance v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;

    invoke-direct {v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;-><init>()V

    .line 86
    .local v2, "holder":Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    const/4 v7, 0x0

    .line 87
    .local v7, "v":Landroid/view/View;
    iget-object v9, v0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 88
    .local v4, "id":J
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    .line 89
    .local v3, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getSessionIds()Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v9

    invoke-virtual {v0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getSessionIds()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessions(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 92
    .local v1, "ec":Luk/co/alt236/easycursor/EasyCursor;
    invoke-virtual {v0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getViewType()I

    move-result v8

    .line 93
    .local v8, "viewType":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ CARDARRAYADAPTER: viewType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  for actstrpost id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getAllPhotosSize()I

    move-result v6

    .line 95
    .local v6, "photoNumber":I
    if-nez v8, :cond_2

    .line 96
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/eventgenie/android/R$layout;->card_inner_layout_no_content:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 107
    :cond_1
    :goto_0
    sget v9, Lcom/eventgenie/android/R$id;->author_header_text:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    .line 108
    sget v9, Lcom/eventgenie/android/R$id;->date_header_text:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvDate:Landroid/widget/TextView;

    .line 109
    sget v9, Lcom/eventgenie/android/R$id;->date_clock:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivDate:Landroid/widget/ImageView;

    .line 110
    sget v9, Lcom/eventgenie/android/R$id;->content_title:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    .line 111
    sget v9, Lcom/eventgenie/android/R$id;->content_details:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentDetails:Landroid/widget/TextView;

    .line 112
    sget v9, Lcom/eventgenie/android/R$id;->postTypeThumbnail:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    .line 113
    sget v9, Lcom/eventgenie/android/R$id;->authorThumbnail:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    .line 115
    sget v9, Lcom/eventgenie/android/R$id;->ibFavButton:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    .line 116
    sget v9, Lcom/eventgenie/android/R$id;->ibCommentsButton:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    .line 117
    sget v9, Lcom/eventgenie/android/R$id;->ibShareButton:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    .line 118
    sget v9, Lcom/eventgenie/android/R$id;->viewSeparatorLeft:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorLeft:Landroid/view/View;

    .line 119
    sget v9, Lcom/eventgenie/android/R$id;->viewSeparatorRight:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorRight:Landroid/view/View;

    .line 121
    iget-object v10, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v11, 0x0

    sget v9, Lcom/eventgenie/android/R$id;->content1:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ViewFlipper;

    aput-object v9, v10, v11

    .line 122
    iget-object v10, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v11, 0x1

    sget v9, Lcom/eventgenie/android/R$id;->content2:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ViewFlipper;

    aput-object v9, v10, v11

    .line 123
    iget-object v10, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v11, 0x2

    sget v9, Lcom/eventgenie/android/R$id;->content3:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ViewFlipper;

    aput-object v9, v10, v11

    .line 124
    iget-object v10, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v11, 0x3

    sget v9, Lcom/eventgenie/android/R$id;->content4:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ViewFlipper;

    aput-object v9, v10, v11

    .line 126
    sget v9, Lcom/eventgenie/android/R$id;->card_inner_layout:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    .line 127
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    new-instance v10, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$1;

    invoke-direct {v10, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$1;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    new-instance v10, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$2;

    invoke-direct {v10, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$2;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    new-instance v10, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$3;

    invoke-direct {v10, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$3;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v9, Lcom/readystatesoftware/viewbadger/BadgeView;

    iget-object v10, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mContext:Landroid/content/Context;

    iget-object v11, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    invoke-direct {v9, v10, v11}, Lcom/readystatesoftware/viewbadger/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    .line 153
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/readystatesoftware/viewbadger/BadgeView;->setBadgePosition(I)V

    .line 154
    iget-object v9, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v9, v10}, Lcom/readystatesoftware/viewbadger/BadgeView;->setTextSize(F)V

    .line 156
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    move-object p2, v7

    .line 162
    .end local v1    # "ec":Luk/co/alt236/easycursor/EasyCursor;
    .end local v3    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v4    # "id":J
    .end local v6    # "photoNumber":I
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "viewType":I
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v2, v0, v9}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->setContentIntoViewHolder(Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;Lcom/genie_connect/common/db/model/ActivityStreamPost;Landroid/content/Context;)V

    .line 163
    return-object p2

    .line 97
    .restart local v1    # "ec":Luk/co/alt236/easycursor/EasyCursor;
    .restart local v3    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .restart local v4    # "id":J
    .restart local v6    # "photoNumber":I
    .restart local v7    # "v":Landroid/view/View;
    .restart local v8    # "viewType":I
    :cond_2
    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 98
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/eventgenie/android/R$layout;->card_inner_layout_one:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 99
    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 100
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/eventgenie/android/R$layout;->card_inner_layout_two:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 101
    :cond_4
    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 102
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/eventgenie/android/R$layout;->card_inner_layout_three:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 103
    :cond_5
    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 104
    iget-object v9, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/eventgenie/android/R$layout;->card_inner_layout_four:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    .line 160
    .end local v1    # "ec":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "holder":Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    .end local v3    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v4    # "id":J
    .end local v6    # "photoNumber":I
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "viewType":I
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;

    .restart local v2    # "holder":Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x5

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 180
    .local v0, "id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^CARDARRAYADAPTER onclick id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    invoke-interface {v2, v0, v1}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;->onClickCard(J)V

    .line 183
    .end local v0    # "id":J
    :cond_1
    return-void
.end method

.method public setContentIntoViewHolder(Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;Lcom/genie_connect/common/db/model/ActivityStreamPost;Landroid/content/Context;)V
    .locals 29
    .param p1, "holder"    # Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    .param p2, "post"    # Lcom/genie_connect/common/db/model/ActivityStreamPost;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v23

    .line 188
    .local v23, "postJSON":Lcom/genie_connect/common/platform/json/IJsonObject;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "^ AS Get Author Initial: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getIsFavourite()Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    .line 192
    const-string/jumbo v26, "timestamp"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 193
    .local v24, "serverTime":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvDate:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v24}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getDateDifference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const-string/jumbo v26, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 196
    .local v15, "contentTitle":Ljava/lang/String;
    invoke-static {v15}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 197
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentDetails:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "message"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const-string v10, ""

    .line 205
    .local v10, "authorImageUrl":Ljava/lang/String;
    const-string v26, "author"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v11

    .line 206
    .local v11, "authorJSON":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v11, :cond_0

    .line 207
    const-string v26, "imageUrl"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 209
    :cond_0
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 210
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 217
    :goto_1
    const-string/jumbo v26, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    .line 220
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "^ AS Get Author2: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 221
    const-string v26, "author"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v8

    .line 223
    .local v8, "author":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v8, :cond_a

    .line 224
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, "authorName":Ljava/lang/String;
    invoke-static {v13}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 226
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .end local v13    # "authorName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->whiteColor:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->blackColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->grayColor:I

    move/from16 v28, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->setViewHolderIcons(Landroid/content/Context;Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;III)V

    .line 262
    const-string v26, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 265
    .local v18, "id":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v26, v0

    sget v27, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 266
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    sget v27, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 267
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    sget v27, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 268
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    sget v27, Lcom/eventgenie/android/R$id;->favId:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 269
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    sget v27, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 270
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    sget v27, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 271
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->id:J

    .line 273
    const-string v26, "noComments"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 275
    const-string v26, "noComments"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 277
    .local v14, "commentCount":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v26

    if-lez v26, :cond_b

    .line 278
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/readystatesoftware/viewbadger/BadgeView;->show()V

    .line 279
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v26, v0

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/readystatesoftware/viewbadger/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .end local v14    # "commentCount":Ljava/lang/Integer;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v20

    .line 290
    .local v20, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    const-string v26, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 291
    .local v6, "activityStreamPostID":J
    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getActivityStreamPictures(J)[Ljava/lang/String;

    move-result-object v22

    .line 294
    .local v22, "photos":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6, v7}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAllAssociatedEntitiesForPost(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v16

    .line 297
    .local v16, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    if-gtz v26, :cond_2

    :cond_1
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_11

    .line 298
    :cond_2
    const/16 v21, 0x0

    .line 299
    .local v21, "offset":I
    if-eqz v22, :cond_e

    .line 300
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    const/16 v26, 0x4

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 301
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v26, v0

    aget-object v26, v26, v17

    if-eqz v26, :cond_3

    .line 303
    aget-object v26, v22, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v27, v0

    aget-object v27, v27, v17

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->clearAndReloadImage(Ljava/lang/String;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V

    .line 300
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 201
    .end local v6    # "activityStreamPostID":J
    .end local v8    # "author":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v10    # "authorImageUrl":Ljava/lang/String;
    .end local v11    # "authorJSON":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v16    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    .end local v17    # "i":I
    .end local v18    # "id":J
    .end local v20    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v21    # "offset":I
    .end local v22    # "photos":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 214
    .restart local v10    # "authorImageUrl":Ljava/lang/String;
    .restart local v11    # "authorJSON":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v26, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 229
    .restart local v8    # "author":Lcom/genie_connect/common/platform/json/IJsonObject;
    .restart local v13    # "authorName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v26, "visitor"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v25

    .line 231
    .local v25, "visitor":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v25, :cond_9

    .line 232
    const-string v26, "firstNames"

    invoke-interface/range {v25 .. v26}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "authorFirstName":Ljava/lang/String;
    invoke-static {v9}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 235
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 238
    :cond_7
    const-string v26, "lastNames"

    invoke-interface/range {v25 .. v26}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, "authorLastName":Ljava/lang/String;
    invoke-static {v12}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 241
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 244
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 249
    .end local v9    # "authorFirstName":Ljava/lang/String;
    .end local v12    # "authorLastName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 254
    .end local v13    # "authorName":Ljava/lang/String;
    .end local v25    # "visitor":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 281
    .restart local v14    # "commentCount":Ljava/lang/Integer;
    .restart local v18    # "id":J
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/readystatesoftware/viewbadger/BadgeView;->hide()V

    goto/16 :goto_3

    .line 284
    .end local v14    # "commentCount":Ljava/lang/Integer;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/readystatesoftware/viewbadger/BadgeView;->hide()V

    goto/16 :goto_3

    .line 306
    .restart local v6    # "activityStreamPostID":J
    .restart local v16    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    .restart local v17    # "i":I
    .restart local v20    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .restart local v21    # "offset":I
    .restart local v22    # "photos":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v21, v0

    .line 309
    .end local v17    # "i":I
    :cond_e
    if-eqz v16, :cond_11

    .line 310
    move/from16 v17, v21

    .restart local v17    # "i":I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v21

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    const/16 v26, 0x4

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    .line 311
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v26, v0

    aget-object v26, v26, v17

    if-eqz v26, :cond_f

    .line 312
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "^ CARDARRAYADAPTER clearAndReloadImage ENTITY "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-int v26, v17, v21

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v26 .. v26}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-int v26, v17, v21

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v26 .. v26}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-int v26, v17, v21

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v26 .. v26}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getFullDescription()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 316
    sub-int v26, v17, v21

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v26 .. v26}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 317
    sub-int v26, v17, v21

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v26 .. v26}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v27, v0

    aget-object v27, v27, v17

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->clearAndReloadImage(Ljava/lang/String;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V

    .line 310
    :cond_f
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 322
    :cond_10
    sub-int v26, v17, v21

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/eventgenie/android/container/EntityWrapper;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v27, v0

    aget-object v27, v27, v17

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->clearAndReloadEntity(Lcom/eventgenie/android/container/EntityWrapper;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V

    goto :goto_6

    .line 330
    .end local v17    # "i":I
    .end local v21    # "offset":I
    :cond_11
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "newData":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->activityStreamPosts:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method
