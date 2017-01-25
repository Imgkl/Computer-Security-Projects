.class public Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "CardCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final blackColor:I

.field final colors:[I

.field final facebookColor:I

.field final grayColor:I

.field private mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

.field private mInflater:Landroid/view/LayoutInflater;

.field final twitterColor:I

.field final whiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/eventgenie/android/R$color;->White:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->whiteColor:I

    .line 54
    sget v1, Lcom/eventgenie/android/R$color;->Black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->blackColor:I

    .line 55
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->colors:[I

    .line 56
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->colors:[I

    const/4 v2, 0x0

    sget v3, Lcom/eventgenie/android/R$color;->LightSalmon:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 57
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->colors:[I

    const/4 v2, 0x1

    sget v3, Lcom/eventgenie/android/R$color;->LightBlue:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 58
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->colors:[I

    const/4 v2, 0x2

    sget v3, Lcom/eventgenie/android/R$color;->Olive:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 59
    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->colors:[I

    const/4 v2, 0x3

    sget v3, Lcom/eventgenie/android/R$color;->LightCyan:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 60
    sget v1, Lcom/eventgenie/android/R$color;->Blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->twitterColor:I

    .line 61
    sget v1, Lcom/eventgenie/android/R$color;->DarkBlue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->facebookColor:I

    .line 62
    sget v1, Lcom/eventgenie/android/R$color;->LightGrey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->grayColor:I

    .line 63
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mContext:Landroid/content/Context;

    .line 64
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    iput-object p4, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;)Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    return-object v0
.end method

.method private getItemViewTypeFromCursor(Landroid/database/Cursor;)I
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x4

    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, "length":I
    const-string v11, "id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "columnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 72
    .local v4, "id":J
    iget-object v11, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v8

    .line 73
    .local v8, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v8}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getActivityStreamPictures(J)[Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, "photos":[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 76
    array-length v11, v9

    add-int/2addr v7, v11

    .line 78
    :cond_0
    if-lt v7, v10, :cond_1

    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " CARDCURSORADAPTER: viewType getItemViewType: 4 just photos for actstrpost id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 90
    :goto_0
    return v10

    .line 82
    :cond_1
    sget-object v0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->supportedEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v2, v0, v3

    .line 83
    .local v2, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v8}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v11

    invoke-virtual {v11, v2, v4, v5}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedEntityIdsForPost(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v7, v11

    .line 84
    if-lt v7, v10, :cond_2

    .line 85
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " CARDCURSORADAPTER: viewType getItemViewType: 4 with entities for actstrpost id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v2    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " CARDCURSORADAPTER: viewType getItemViewType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  for actstrpost id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    move v10, v7

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;

    .line 108
    .local v0, "holder":Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v1, p3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->setContentIntoViewHolder(Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;Luk/co/alt236/easycursor/EasyCursor;Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 96
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->getItemViewTypeFromCursor(Landroid/database/Cursor;)I

    move-result v1

    .line 97
    .local v1, "x":I
    return v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x5

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 113
    new-instance v2, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 114
    .local v2, "eCursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;

    invoke-direct {v5}, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;-><init>()V

    .line 115
    .local v5, "holder":Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    const/4 v10, 0x0

    .line 116
    .local v10, "v":Landroid/view/View;
    const-string v12, "id"

    invoke-interface {v2, v12}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 117
    .local v6, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    .line 118
    .local v7, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getActivityStreamPictures(J)[Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "photos":[Ljava/lang/String;
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v15}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAllAssociatedEntitiesForPost(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    .line 121
    .local v4, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessions(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 123
    .local v3, "ec":Luk/co/alt236/easycursor/EasyCursor;
    const/4 v11, 0x0

    .line 124
    .local v11, "viewType":I
    if-eqz v9, :cond_0

    .line 125
    array-length v12, v9

    add-int/2addr v11, v12

    .line 127
    :cond_0
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v11, v12

    .line 130
    :cond_1
    if-eqz v3, :cond_2

    .line 131
    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v12

    add-int/2addr v11, v12

    .line 134
    :cond_2
    const/4 v12, 0x4

    if-le v11, v12, :cond_3

    .line 135
    const/4 v11, 0x4

    .line 137
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ CARDCURSORADAPTER: viewType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  for actstrpost id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 138
    invoke-static {v9, v4}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->getNumberOfPhotos([Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v8

    .line 139
    .local v8, "photoNumber":I
    if-nez v11, :cond_5

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v13, Lcom/eventgenie/android/R$layout;->card_inner_layout_no_content:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 151
    :cond_4
    :goto_0
    sget v12, Lcom/eventgenie/android/R$id;->author_header_text:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    .line 152
    sget v12, Lcom/eventgenie/android/R$id;->date_header_text:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvDate:Landroid/widget/TextView;

    .line 153
    sget v12, Lcom/eventgenie/android/R$id;->date_clock:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivDate:Landroid/widget/ImageView;

    .line 154
    sget v12, Lcom/eventgenie/android/R$id;->content_title:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    .line 155
    sget v12, Lcom/eventgenie/android/R$id;->content_details:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentDetails:Landroid/widget/TextView;

    .line 156
    sget v12, Lcom/eventgenie/android/R$id;->postTypeThumbnail:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    .line 157
    sget v12, Lcom/eventgenie/android/R$id;->authorThumbnail:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    .line 159
    sget v12, Lcom/eventgenie/android/R$id;->ibFavButton:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    .line 160
    sget v12, Lcom/eventgenie/android/R$id;->ibCommentsButton:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    .line 161
    sget v12, Lcom/eventgenie/android/R$id;->ibShareButton:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    .line 162
    sget v12, Lcom/eventgenie/android/R$id;->viewSeparatorLeft:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorLeft:Landroid/view/View;

    .line 163
    sget v12, Lcom/eventgenie/android/R$id;->viewSeparatorRight:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorRight:Landroid/view/View;

    .line 165
    iget-object v13, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v14, 0x0

    sget v12, Lcom/eventgenie/android/R$id;->content1:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    aput-object v12, v13, v14

    .line 166
    iget-object v13, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v14, 0x1

    sget v12, Lcom/eventgenie/android/R$id;->content2:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    aput-object v12, v13, v14

    .line 167
    iget-object v13, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v14, 0x2

    sget v12, Lcom/eventgenie/android/R$id;->content3:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    aput-object v12, v13, v14

    .line 168
    iget-object v13, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    const/4 v14, 0x3

    sget v12, Lcom/eventgenie/android/R$id;->content4:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ViewFlipper;

    aput-object v12, v13, v14

    .line 170
    sget v12, Lcom/eventgenie/android/R$id;->card_inner_layout:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    .line 171
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    new-instance v13, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$1;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    new-instance v13, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$2;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    new-instance v13, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$3;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v12, Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v14, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    invoke-direct {v12, v13, v14}, Lcom/readystatesoftware/viewbadger/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    .line 204
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/readystatesoftware/viewbadger/BadgeView;->setBadgePosition(I)V

    .line 205
    iget-object v12, v5, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v12, v13}, Lcom/readystatesoftware/viewbadger/BadgeView;->setTextSize(F)V

    .line 207
    invoke-virtual {v10, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v2, v1}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->setContentIntoViewHolder(Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;Luk/co/alt236/easycursor/EasyCursor;Landroid/content/Context;)V

    .line 209
    return-object v10

    .line 141
    :cond_5
    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v13, Lcom/eventgenie/android/R$layout;->card_inner_layout_one:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto/16 :goto_0

    .line 143
    :cond_6
    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v13, Lcom/eventgenie/android/R$layout;->card_inner_layout_two:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto/16 :goto_0

    .line 145
    :cond_7
    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v13, Lcom/eventgenie/android/R$layout;->card_inner_layout_three:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto/16 :goto_0

    .line 147
    :cond_8
    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v13, Lcom/eventgenie/android/R$layout;->card_inner_layout_four:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 341
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 342
    .local v0, "id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^CARDCURSORADAPTER onclick id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    invoke-interface {v2, v0, v1}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;->onClickCard(J)V

    .line 345
    .end local v0    # "id":J
    :cond_1
    return-void
.end method

.method public setContentIntoViewHolder(Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;Luk/co/alt236/easycursor/EasyCursor;Landroid/content/Context;)V
    .locals 25
    .param p1, "holder"    # Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    .param p2, "eCursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const-string v22, "author_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 216
    .local v11, "authorName":Ljava/lang/String;
    invoke-static {v11}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 217
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvDate:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const-string/jumbo v23, "timestamp"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getDateDifference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const-string/jumbo v22, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    .local v13, "contentTitle":Ljava/lang/String;
    invoke-static {v13}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentDetails:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const-string v23, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const-string v22, "author_imageUrl"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "authorImageUrl":Ljava/lang/String;
    if-nez v9, :cond_7

    .line 254
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :goto_2
    const-string/jumbo v22, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    .line 262
    const-string v22, "isFavourite"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    .line 263
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ CARDCURSORADAPTER onFav createView isFav: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->whiteColor:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->blackColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->grayColor:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->setViewHolderIcons(Landroid/content/Context;Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;III)V

    .line 268
    const-string v22, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 269
    .local v16, "id":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ CARDCURSORADAPTER id: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 271
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 272
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 273
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->favId:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 274
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 275
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 276
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->id:J

    .line 278
    const-string v22, "noComments"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 279
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/readystatesoftware/viewbadger/BadgeView;->hide()V

    .line 292
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v18

    .line 294
    .local v18, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    const-string v22, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 295
    .local v6, "activityStreamPostID":J
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getActivityStreamPictures(J)[Ljava/lang/String;

    move-result-object v20

    .line 298
    .local v20, "photos":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6, v7}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAllAssociatedEntitiesForPost(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v14

    .line 301
    .local v14, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessions(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v21

    .line 304
    .local v21, "sessionEntitiesCursor":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    if-gtz v22, :cond_1

    :cond_0
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 305
    :cond_1
    const/16 v19, 0x0

    .line 306
    .local v19, "offset":I
    if-eqz v20, :cond_a

    .line 307
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_a

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_a

    .line 308
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v22, v0

    aget-object v22, v22, v15

    if-eqz v22, :cond_2

    .line 309
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ CARDCURSORADAPTER clearAndReloadImage PHOTO "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 310
    aget-object v22, v20, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->clearAndReloadImage(Ljava/lang/String;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V

    .line 312
    :cond_2
    add-int/lit8 v19, v15, 0x1

    .line 307
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 220
    .end local v6    # "activityStreamPostID":J
    .end local v9    # "authorImageUrl":Ljava/lang/String;
    .end local v13    # "contentTitle":Ljava/lang/String;
    .end local v14    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    .end local v15    # "i":I
    .end local v16    # "id":J
    .end local v18    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v19    # "offset":I
    .end local v20    # "photos":[Ljava/lang/String;
    .end local v21    # "sessionEntitiesCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_3
    const-string v22, "author_firstNames"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "authorFirstName":Ljava/lang/String;
    invoke-static {v8}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 224
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 227
    :cond_4
    const-string v22, "author_lastNames"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, "authorLastName":Ljava/lang/String;
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 231
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 249
    .end local v8    # "authorFirstName":Ljava/lang/String;
    .end local v10    # "authorLastName":Ljava/lang/String;
    .restart local v13    # "contentTitle":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 258
    .restart local v9    # "authorImageUrl":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibAuthorMugshot:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 281
    .restart local v16    # "id":J
    :cond_8
    const-string v22, "noComments"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 283
    .local v12, "commentCount":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-lez v22, :cond_9

    .line 284
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/readystatesoftware/viewbadger/BadgeView;->show()V

    .line 285
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/readystatesoftware/viewbadger/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 287
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bvCommentCount:Lcom/readystatesoftware/viewbadger/BadgeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/readystatesoftware/viewbadger/BadgeView;->hide()V

    goto/16 :goto_3

    .line 316
    .end local v12    # "commentCount":Ljava/lang/Integer;
    .restart local v6    # "activityStreamPostID":J
    .restart local v14    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    .restart local v18    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .restart local v19    # "offset":I
    .restart local v20    # "photos":[Ljava/lang/String;
    .restart local v21    # "sessionEntitiesCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_a
    if-eqz v14, :cond_d

    .line 317
    move/from16 v15, v19

    .restart local v15    # "i":I
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v22, v22, v19

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 318
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v22, v0

    aget-object v22, v22, v15

    if-eqz v22, :cond_b

    .line 319
    sub-int v22, v15, v19

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v22 .. v22}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 320
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "^ CARDCURSORADAPTER clearAndReloadImage ENTITY "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 321
    sub-int v22, v15, v19

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual/range {v22 .. v22}, Lcom/eventgenie/android/container/CursorEntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->clearAndReloadImage(Ljava/lang/String;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V

    .line 317
    :cond_b
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 325
    :cond_c
    sub-int v22, v15, v19

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/eventgenie/android/container/EntityWrapper;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->vfContent:[Landroid/widget/ViewFlipper;

    move-object/from16 v23, v0

    aget-object v23, v23, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-static {v0, v1, v15, v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->clearAndReloadEntity(Lcom/eventgenie/android/container/EntityWrapper;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V

    goto :goto_6

    .line 333
    .end local v15    # "i":I
    .end local v19    # "offset":I
    :cond_d
    return-void
.end method
