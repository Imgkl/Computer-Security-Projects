.class public Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "SessionFilterActivity.java"


# static fields
.field public static final FILTER_CATEGORIES_EXTRA:Ljava/lang/String; = "filter_categories_extra"

.field public static final FILTER_TYPE_EXTRA:Ljava/lang/String; = "filter_type_extra"

.field public static final KEYWORD_EXTRA:Ljava/lang/String; = "KEYWORD_EXTRA"

.field public static final TITLE_DATA_SEPARATOR:Ljava/lang/String; = "%%"


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterType:Ljava/lang/String;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSvKeywordSearch:Landroid/widget/SearchView;

.field private mTagsV2Repository:Lcom/genie_connect/android/repository/TagsV2Repository;

.field private mTvKeywordSearch:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private searchViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    return-void
.end method

.method private addFilterPage(Lcom/genie_connect/common/db/model/TagsV2;)Landroid/view/View;
    .locals 12
    .param p1, "tag"    # Lcom/genie_connect/common/db/model/TagsV2;

    .prologue
    const/4 v11, 0x0

    .line 113
    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mTagsV2Repository:Lcom/genie_connect/android/repository/TagsV2Repository;

    invoke-virtual {v8, p1}, Lcom/genie_connect/android/repository/TagsV2Repository;->getLevelOneChildTagsFromParent(Lcom/genie_connect/common/db/model/TagsV2;)Ljava/util/List;

    move-result-object v4

    .line 114
    .local v4, "levelOneChildTagsFromParent":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/TagsV2;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FILTERS:  \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' .Results "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 117
    iget-object v8, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v9, Lcom/eventgenie/android/R$layout;->category_filter_list:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 118
    .local v6, "page":Landroid/view/View;
    sget v8, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 120
    .local v5, "list":Landroid/widget/ListView;
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 121
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/common/db/model/TagsV2;

    .line 126
    .local v7, "tagsV2":Lcom/genie_connect/common/db/model/TagsV2;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FILTERS:  Add category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/genie_connect/common/db/model/TagsV2;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 127
    new-instance v8, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;

    iget-object v9, v7, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/genie_connect/common/db/model/TagsV2;->label:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v7    # "tagsV2":Lcom/genie_connect/common/db/model/TagsV2;
    :cond_0
    new-instance v8, Lcom/eventgenie/android/adapters/entity/Tagv2FilterAdapter;

    const v9, 0x1090010

    invoke-direct {v8, p0, v9, v0}, Lcom/eventgenie/android/adapters/entity/Tagv2FilterAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v8, p1, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v8, p1, Lcom/genie_connect/common/db/model/TagsV2;->label:Ljava/lang/String;

    iget-object v9, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-static {v8, v5, v9}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->selectRows(Ljava/lang/String;Landroid/widget/ListView;Ljava/util/List;)V

    .line 135
    sget v8, Lcom/eventgenie/android/R$id;->btn_select_all:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 136
    .local v1, "bSelectAll":Landroid/widget/Button;
    sget v8, Lcom/eventgenie/android/R$id;->btn_select_none:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 138
    .local v2, "bSelectNone":Landroid/widget/Button;
    new-instance v8, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$1;

    invoke-direct {v8, p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$1;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v8, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$2;

    invoke-direct {v8, p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$2;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;Landroid/widget/ListView;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-object v6
.end method

.method private addFilterPage(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getParentCategoryChildren(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 165
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->close(Landroid/database/Cursor;)V

    .line 216
    :goto_0
    return-object v6

    .line 170
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ FILTERS:  \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' .Results "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/eventgenie/android/R$layout;->category_filter_list:I

    invoke-virtual {v7, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 173
    .local v6, "page":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 175
    .local v5, "list":Landroid/widget/ListView;
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 176
    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 181
    const-string v7, "name"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "category":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ FILTERS:  Add category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 183
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 187
    .end local v4    # "category":Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;

    const v8, 0x1090010

    invoke-direct {v7, p0, v8, v0}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    invoke-virtual {v5, p1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-static {p1, v5, v7}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->selectRows(Ljava/lang/String;Landroid/widget/ListView;Ljava/util/List;)V

    .line 192
    sget v7, Lcom/eventgenie/android/R$id;->btn_select_all:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 193
    .local v1, "bSelectAll":Landroid/widget/Button;
    sget v7, Lcom/eventgenie/android/R$id;->btn_select_none:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 195
    .local v2, "bSelectNone":Landroid/widget/Button;
    new-instance v7, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;

    invoke-direct {v7, p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$3;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v7, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$4;

    invoke-direct {v7, p0, v5}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$4;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;Landroid/widget/ListView;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->close(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private getParentCategories()Luk/co/alt236/easycursor/EasyCursor;
    .locals 2

    .prologue
    .line 220
    const-string v0, "sessions"

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getCategories()Lcom/genie_connect/android/db/access/DbCategories;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbCategories;->getSessionCategoryParents()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getParentCategoryChildren(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "sessions"

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getCategories()Lcom/genie_connect/android/db/access/DbCategories;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/access/DbCategories;->getSessionCategoryChildren(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyViewAdaptorChanged()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 245
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    goto :goto_0
.end method

.method private populateUI()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setupTabs()V

    .line 376
    return-void
.end method

.method private static selectRows(Ljava/lang/String;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "list"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "stateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 72
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 88
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 79
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "item":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FILTER: Checking for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 84
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {p1, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setKeywordResultAndFinish()V
    .locals 4

    .prologue
    .line 380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "KEYWORD_EXTRA"

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mSvKeywordSearch:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 387
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 388
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->finish()V

    .line 389
    return-void
.end method

.method private setTagsResult(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "filter_categories_extra"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 396
    const-string v2, "filter_type_extra"

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 400
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 401
    return-void
.end method

.method private setupButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 404
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->KEYWORD_SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 405
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionResetWithText(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionSearchWithText(Z)V

    .line 408
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 257
    sget v1, Lcom/eventgenie/android/R$layout;->schedule_view_pager_ui:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setContentView(I)V

    .line 259
    const-class v1, Lcom/genie_connect/android/repository/TagsV2Repository;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/TagsV2Repository;

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mTagsV2Repository:Lcom/genie_connect/android/repository/TagsV2Repository;

    .line 261
    sget v1, Lcom/eventgenie/android/R$id;->viewFlipperUI:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchViewFlipper:Landroid/widget/ViewFlipper;

    .line 262
    sget v1, Lcom/eventgenie/android/R$id;->keyword_search:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mTvKeywordSearch:Landroid/widget/TextView;

    .line 263
    sget v1, Lcom/eventgenie/android/R$id;->tagSearch:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mSvKeywordSearch:Landroid/widget/SearchView;

    .line 264
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mSvKeywordSearch:Landroid/widget/SearchView;

    new-instance v2, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$5;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity$5;-><init>(Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->title_filter:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 280
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 281
    const-string v1, "filter_categories_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterList:Ljava/util/ArrayList;

    .line 282
    const-string v1, "filter_type_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 287
    const-string v1, "sessions"

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 291
    new-instance v1, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 292
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 293
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 295
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 296
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 297
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 299
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ FILTER - Opened filter page for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' Filter list size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setupButtons()V

    .line 304
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->populateUI()V

    .line 305
    return-void

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public onKeywordSearch(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    const-string v0, "^ FILTER - onKeywordSearch "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 310
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mTvKeywordSearch:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->keyword_search:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 317
    :goto_1
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mTvKeywordSearch:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->tag_search:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onResetClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 320
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v3

    .line 324
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 325
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v5, v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 326
    .local v4, "tabContentView":Landroid/view/View;
    sget v5, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 327
    .local v2, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 328
    invoke-virtual {v2, v1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "j":I
    .end local v2    # "list":Landroid/widget/ListView;
    .end local v4    # "tabContentView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mSvKeywordSearch:Landroid/widget/SearchView;

    const-string v6, ""

    invoke-virtual {v5, v6, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 333
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 338
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v6, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v10}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v7

    .line 346
    .local v7, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 347
    iget-object v10, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v10, v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 350
    .local v8, "tabContentView":Landroid/view/View;
    sget v10, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 352
    .local v5, "list":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 354
    .local v9, "tabTitle":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 355
    .local v4, "len":I
    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 358
    .local v0, "checked":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 359
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "checked":Landroid/util/SparseBooleanArray;
    .end local v3    # "j":I
    .end local v4    # "len":I
    .end local v5    # "list":Landroid/widget/ListView;
    .end local v8    # "tabContentView":Landroid/view/View;
    .end local v9    # "tabTitle":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setTagsResult(Ljava/util/ArrayList;)V

    .line 367
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->finish()V

    .line 372
    .end local v1    # "i":I
    .end local v6    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "size":I
    :goto_2
    return-void

    .line 370
    :cond_3
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->setKeywordResultAndFinish()V

    goto :goto_2
.end method

.method protected setupTabs()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 411
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    .line 414
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/SetupConfig;->isNewTagsForSessions()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 416
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mTagsV2Repository:Lcom/genie_connect/android/repository/TagsV2Repository;

    invoke-virtual {v5}, Lcom/genie_connect/android/repository/TagsV2Repository;->getAllParentTags()Ljava/util/Set;

    move-result-object v4

    .line 418
    .local v4, "parentTags":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/model/TagsV2;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 419
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/TagsV2;

    .line 420
    .local v3, "parentTag":Lcom/genie_connect/common/db/model/TagsV2;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ FILTERS:  \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/genie_connect/common/db/model/TagsV2;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 422
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->addFilterPage(Lcom/genie_connect/common/db/model/TagsV2;)Landroid/view/View;

    move-result-object v6

    iget-object v7, v3, Lcom/genie_connect/common/db/model/TagsV2;->label:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    .end local v3    # "parentTag":Lcom/genie_connect/common/db/model/TagsV2;
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->notifyViewAdaptorChanged()V

    .line 451
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "parentTags":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/model/TagsV2;>;"
    :cond_1
    :goto_1
    return-void

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getParentCategories()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 431
    .local v0, "cParents":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 434
    :goto_2
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 435
    const-string v5, "name"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->addFilterPage(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 437
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_2

    .line 440
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->notifyViewAdaptorChanged()V

    .line 449
    :goto_3
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->close(Landroid/database/Cursor;)V

    goto :goto_1

    .line 443
    :cond_4
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->showNext()V

    .line 444
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchModeTags:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->searchViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v7}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 446
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionFilterActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->KEYWORD_SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v5, v6, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_3
.end method
