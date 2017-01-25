.class public Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;,
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;,
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;,
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;"
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_REPORT_POST:I = 0x37f

.field public static final RESULT_CODE_REFRESH_ON_CLOSE:I = 0x234a


# instance fields
.field private commentsListView:Landroid/widget/ListView;

.field private entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private galleryAdapter:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

.field public hasDetails:Z

.field private ibAddComment:Landroid/widget/ImageButton;

.field private ibAuthorThumbnail:Landroid/widget/ImageButton;

.field private ibEnlargeDetail:Landroid/widget/ImageButton;

.field private id:Ljava/lang/Long;

.field private innerView:Landroid/view/View;

.field private ivFav:Landroid/widget/ImageView;

.field private ivShare:Landroid/widget/ImageView;

.field private llAddComment:Landroid/widget/LinearLayout;

.field private loggedInVisitorId:J

.field private mAdapter:Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

.field private mCommentsErrorText:Landroid/widget/TextView;

.field private mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

.field private mProgress:Landroid/widget/ProgressBar;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

.field private photos:[Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private spacer:Landroid/view/View;

.field private topContent:Landroid/view/View;

.field private tvAddComment:Landroid/widget/EditText;

.field private tvAuthor:Landroid/widget/TextView;

.field private tvContentDetails:Landroid/widget/TextView;

.field private tvContentTitle:Landroid/widget/TextView;

.field private tvDate:Landroid/widget/TextView;

.field private tvDeletePost:Landroid/widget/TextView;

.field private tvViewPostOnline:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->hasDetails:Z

    .line 157
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->loggedInVisitorId:J

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibAddComment:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->addComment()V

    return-void
.end method

.method static synthetic access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;Ljava/lang/Long;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->setFavourite(Ljava/lang/Long;Z)V

    return-void
.end method

.method private addComment()V
    .locals 4

    .prologue
    .line 759
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "comment":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 771
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->message_activity_stream_comment_add_no_text:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method private setFavourite(Ljava/lang/Long;Z)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .param p2, "shouldFav"    # Z

    .prologue
    .line 205
    const-class v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    .line 206
    .local v0, "favManager":Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$1;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    .line 240
    return-void
.end method

.method private startCarousel()V
    .locals 4

    .prologue
    .line 842
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getActivityStreamPictures(J)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    .line 847
    const-string v1, "photo"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 850
    const-string v1, "extra_hide_view_original"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 851
    const-string v1, "photo_number"

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    const-string v1, "photoset_desc_1"

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvContentTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 855
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 856
    return-void
.end method

.method private startDetails(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 799
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 801
    .local v3, "position":I
    const/4 v7, 0x0

    .line 803
    .local v7, "sessionsPos":I
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 804
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    array-length v2, v8

    .line 809
    .local v2, "offset":I
    :goto_0
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 810
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->startCarousel()V

    .line 839
    :cond_0
    :goto_1
    return-void

    .line 807
    .end local v2    # "offset":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "offset":I
    goto :goto_0

    .line 812
    :cond_2
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v2

    if-ge v3, v8, :cond_3

    .line 813
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    sub-int v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/eventgenie/android/container/CursorEntityWrapper;->generateDetailsIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 816
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 819
    .local v0, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v8

    iget-object v9, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessionIds(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 821
    .local v6, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sub-int v7, v3, v2

    .line 822
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 823
    iget-object v8, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    .line 825
    :cond_4
    const-wide/16 v4, -0x1

    .line 826
    .local v4, "sessionId":J
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v7, :cond_5

    .line 827
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 829
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ ACTIVITYSTREAMDETAILSFRAGMENT pager position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 830
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ ACTIVITYSTREAMDETAILSFRAGMENT sessionsPos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 831
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ ACTIVITYSTREAMDETAILSFRAGMENT sessionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-static {v8, v9, v4, v5, v10}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 834
    .local v1, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public deleteRequested(Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 6
    .param p1, "item"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->dialog_title_activity_stream_comment_delete_confirm:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->dialog_text_activity_stream_comment_delete_confirm:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;

    invoke-direct {v4, p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$7;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;Lcom/eventgenie/android/container/EntityWrapper;)V

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueYesNo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 794
    .local v0, "confirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 796
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 400
    const-string v0, "^ ACTIVITYSTREAMDETAILSFRAGMENT onActivityCreated "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 401
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 402
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DETAIL_ID_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ ACTIVITYSTREAMDETAILSFRAGMENT id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 406
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 408
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 411
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 392
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x37f

    if-ne p1, v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x234a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 394
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 396
    :cond_0
    return-void
.end method

.method public onAddCommentClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->addComment()V

    .line 755
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->setHasOptionsMenu(Z)V

    .line 416
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 417
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DETAIL_ID_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    .line 566
    :cond_1
    new-instance v0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 424
    sget v0, Lcom/eventgenie/android/R$layout;->fragment_stream_details_outer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    .line 426
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->comments_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->commentsListView:Landroid/widget/ListView;

    .line 428
    sget v0, Lcom/eventgenie/android/R$layout;->fragment_stream_details_inner:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->commentsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 431
    new-instance v0, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/genie_connect/android/db/config/AppConfig;JLcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    .line 438
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->commentsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->author_header_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAuthor:Landroid/widget/TextView;

    .line 441
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->delete_post_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvDeletePost:Landroid/widget/TextView;

    .line 442
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->view_post_online_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvViewPostOnline:Landroid/widget/TextView;

    .line 443
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->date_header_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvDate:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->content_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvContentTitle:Landroid/widget/TextView;

    .line 445
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->content_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvContentDetails:Landroid/widget/TextView;

    .line 446
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->authorThumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibAuthorThumbnail:Landroid/widget/ImageButton;

    .line 447
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->ib_enlarge_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibEnlargeDetail:Landroid/widget/ImageButton;

    .line 448
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->panel_add_comment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->llAddComment:Landroid/widget/LinearLayout;

    .line 449
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->comments_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 451
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text_add_comment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;

    .line 452
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->button_add_comment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibAddComment:Landroid/widget/ImageButton;

    .line 455
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;

    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$2;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 469
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->ibFavButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    .line 470
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$3;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->ibShareButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivShare:Landroid/widget/ImageView;

    .line 488
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivShare:Landroid/widget/ImageView;

    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$4;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->flCommentsButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 511
    .local v8, "flCommentsButton":Landroid/widget/FrameLayout;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->viewSeparatorLeft:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 513
    .local v9, "leftSep":Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 517
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$5;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->galleryAdapter:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    .line 535
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->galleryAdapter:Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 538
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->titles:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/LinePageIndicator;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    .line 539
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 540
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 541
    .local v7, "density":F
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/high16 v1, -0x77010000

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setSelectedColor(I)V

    .line 542
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setUnselectedColor(I)V

    .line 543
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 544
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setLineWidth(F)V

    .line 546
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->topContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->topContent:Landroid/view/View;

    .line 548
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->innerView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->spacer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->spacer:Landroid/view/View;

    .line 550
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v10

    .line 551
    .local v10, "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-nez v10, :cond_0

    .line 552
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->llAddComment:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->rootView:Landroid/view/View;

    return-object v0

    .line 554
    :cond_0
    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->loggedInVisitorId:J

    .line 555
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->llAddComment:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDeletePost()V
    .locals 6

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->dialog_title_activity_stream_post_delete_confirm:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->dialog_text_activity_stream_post_delete_confirm:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$6;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$6;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueYesNo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 584
    .local v0, "confirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 585
    return-void
.end method

.method public onExpand(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->startDetails(Landroid/view/View;)V

    .line 589
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->refreshUI(Landroid/database/Cursor;)V

    .line 600
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    .line 594
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->refreshUI(Landroid/database/Cursor;)V

    .line 595
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 607
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 613
    .local v0, "menuItemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 615
    const/4 v1, 0x1

    .line 617
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onReportPost()V
    .locals 3

    .prologue
    .line 621
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 622
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTIVITYSTREAM_POST_ID"

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 623
    const/16 v1, 0x37f

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 624
    return-void
.end method

.method public onViewPostOnline()V
    .locals 3

    .prologue
    .line 628
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshUI(Landroid/database/Cursor;)V
    .locals 23
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 636
    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 637
    new-instance v17, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->moveToFirst()Z

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string v18, "author_visitor"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 643
    .local v14, "visitorId":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->loggedInVisitorId:J

    move-wide/from16 v18, v0

    cmp-long v17, v18, v14

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->loggedInVisitorId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v17, v18, v20

    if-eqz v17, :cond_0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvDeletePost:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string/jumbo v18, "url"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvViewPostOnline:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string v18, "author_name"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, "authorName":Ljava/lang/String;
    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v18, v0

    const-string v19, "author_name"

    invoke-virtual/range {v18 .. v19}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvDate:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v18, v0

    const-string/jumbo v19, "timestamp"

    invoke-virtual/range {v18 .. v19}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getDateDifference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string/jumbo v18, "title"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 682
    .local v12, "title":Ljava/lang/String;
    invoke-static {v12}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 689
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvContentDetails:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v18, v0

    const-string v19, "message"

    invoke-virtual/range {v18 .. v19}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v18, v0

    const-string v19, "author_imageUrl"

    invoke-virtual/range {v18 .. v19}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibAuthorThumbnail:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v10

    .line 698
    .local v10, "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getActivityStreamPictures(J)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    .line 699
    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAllAssociatedEntitiesForPost(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-gtz v17, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 704
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->photos:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->entities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const-string v22, "TITLE"

    invoke-direct/range {v18 .. v22}, Lcom/eventgenie/android/adapters/newsandsocial/GalleryPagerAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 715
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 717
    const-class v17, Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;->isFavourited(Ljava/lang/Long;)Z

    move-result v9

    .line 719
    .local v9, "isFavourite":Z
    if-eqz v9, :cond_a

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/eventgenie/android/R$drawable;->ic_action_fav_on:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget v18, Lcom/eventgenie/android/R$id;->favId:I

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 727
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string/jumbo v18, "type"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 728
    .local v13, "type":Ljava/lang/String;
    sget-object v17, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->TWITTER:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 729
    new-instance v16, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/eventgenie/android/R$color;->Black:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 732
    .local v16, "whiteColorFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/eventgenie/android/R$color;->Blue:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 733
    .local v8, "blueColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivShare:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivShare:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 746
    .end local v8    # "blueColor":I
    .end local v16    # "whiteColorFilter":Landroid/graphics/PorterDuffColorFilter;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivShare:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 747
    .local v11, "mDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v17, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/eventgenie/android/R$color;->Black:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v19}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 751
    .end local v6    # "authorName":Ljava/lang/String;
    .end local v9    # "isFavourite":Z
    .end local v10    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v11    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "visitorId":J
    :cond_4
    return-void

    .line 657
    .restart local v6    # "authorName":Ljava/lang/String;
    .restart local v14    # "visitorId":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string v18, "author_firstNames"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, "authorFirstName":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 664
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCursor:Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    move-object/from16 v17, v0

    const-string v18, "author_lastNames"

    invoke-virtual/range {v17 .. v18}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 667
    .local v5, "authorLastName":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 671
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAuthor:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 687
    .end local v4    # "authorFirstName":Ljava/lang/String;
    .end local v5    # "authorLastName":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvContentTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 708
    .restart local v10    # "mDb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->hasDetails:Z

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibEnlargeDetail:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->spacer:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->pagerIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->topContent:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 724
    .restart local v9    # "isFavourite":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/eventgenie/android/R$drawable;->ic_action_fav_off:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget v18, Lcom/eventgenie/android/R$id;->favId:I

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 739
    .restart local v13    # "type":Ljava/lang/String;
    :cond_b
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/eventgenie/android/R$color;->Black:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 742
    .local v7, "blackColorFilter":Landroid/graphics/PorterDuffColorFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivShare:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ivFav:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_4
.end method
